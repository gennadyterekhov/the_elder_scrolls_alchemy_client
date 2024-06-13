import json
import requests
import time

def get_file_contents(filename) -> str:
    f = open(filename, 'r')
    c = f.read()
    f.close()
    return c


def getId(ing):
    rawName = ing['Ingredient Name']
    parts = rawName.split('\n            ')
    return parts[1]


def getName(ing):
    rawName = ing['Ingredient Name']
    parts = rawName.split('\n            ')
    return parts[0]


def getCleanEffect(effText):
    return effText.split(' (')[0]


def getCleanEffects(ing):
    return [
        getCleanEffect(ing['Primary Effect']),
        getCleanEffect(ing['Secondary Effect']),
        getCleanEffect(ing['Tertiary Effect']),
        getCleanEffect(ing['Quaternary Effect']),
    ]


def getTable():
    table = json.loads(get_file_contents('table_no_img.json'))
    keyed_by_id = {}

    for ing in table:
        id = getId(ing)
        name = getName(ing)
        ing['id'] = id
        ing['name'] = name
        del ing['Ingredient Name']
        del ing['image']

        ing['icon'] = 'TODO add icons'
        ing['uesp_url'] = 'TODO add url'
        ing['text'] = 'Can be purchased from Khajiit caravans.'
        ing['effects'] = getCleanEffects(ing)
        ing['value'] = int(ing['price'])
        ing['weight'] = float(ing['weight'])
        del ing['price']
        del ing['Primary Effect']
        del ing['Secondary Effect']
        del ing['Tertiary Effect']
        del ing['Quaternary Effect']
        keyed_by_id[name] = ing

    print(json.dumps(keyed_by_id))


def guessUespUrl(name):
    name = name.replace(' ', '_')
    return f'https://en.uesp.net/wiki/Skyrim:{name}'


def checkUrlValid(url):
    response = requests.get(url)
    assert (response.status_code == 200)
    time.sleep(0.5)


def uespUrls():
    table = json.loads(get_file_contents('ae_no_url.json'))

    for k, ing in table.items():
        url = guessUespUrl(k)
        # checkUrlValid(url)
        ing['uesp_url'] = url
    print(json.dumps(table))

def getMultipliersFor1Effect(effectString):
    ''' Restore Health (1.2×Magnitude,1.22×Gold)  '''
    parts = effectString.split(' (')
    if len(parts) == 1:
        return None
        return {"Magnitude":1, "Duration":1, "Gold":1}
    
    multis = parts[1].replace(')','') #1.2×Magnitude,1.22×Gold
    multis = multis.split(',') # ['1.2×Magnitude', '1.22×Gold']


    res = {}
    for m in multis:
        parts = m.split('×')
        coef = float(parts[0])
        kind = parts[1].strip()
        res[kind] = coef
        
    return res

def getMultipliers(ing):
    '''
    "Primary Effect": "Restore Health (1.2×Magnitude,1.22×Gold)",
    "Secondary Effect": "Regenerate Health (1.2×Magnitude,1.22×Gold)",
    "Tertiary Effect": "Fortify Health (1.25×Magnitude,1.27×Gold)",
    "Quaternary Effect": "Cure Poison (1.56×Gold)",
    '''
    ing["Primary Effect"]
    return [
            getMultipliersFor1Effect(ing["Primary Effect"]),
            getMultipliersFor1Effect(ing["Secondary Effect"]),
            getMultipliersFor1Effect(ing["Tertiary Effect"]),
            getMultipliersFor1Effect(ing["Quaternary Effect"]),
        ]

def multipliers():
    ''' every effect has 3 kinds: magnitude, duration, price'''
    currentTable = json.loads(get_file_contents('urls.json'))
    mags = json.loads(get_file_contents('mags.json'))
    for ing in mags:
        name = getName(ing)
        mults = getMultipliers(ing)
        currentTable[name]['multipliers'] = mults

    print(json.dumps(currentTable))  
def main():
    # getTable()
    # uespUrls()
    multipliers()


if __name__ == '__main__':
    main()
