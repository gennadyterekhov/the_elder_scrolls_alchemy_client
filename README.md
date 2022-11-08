<a href="https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client/actions">
    <img src="https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client/workflows/test-ci/badge.svg" alt="Build Status">
</a>

# the_elder_scrolls_alchemy_client

The app helps players become better at alchemy in the elder scrolls games.  
You can see all the ingredients that have some specific effect - or see all the effects of every ingredient.  

Supported games:  
1. Skyrim
2. Oblivion
3. Morrowind


web version: https://the-elder-scrolls-alchemy.website.yandexcloud.net/#/


## How to run

the most basic way to lauch the app:  
`flutter run -d chrome`  
this command opens chrome window with the app in debug mode  

for more commands, see [flutter documentation](https://docs.flutter.dev/get-started/test-drive?tab=terminal)  

### Test  

this command runs specific integration test  
`flutter drive --driver integration_test/driver.dart --target integration_test/full_test.dart --no-dds`  

this command runs cpecific widget/unit test  
`flutter test test/data/data_source_test.dart`  


 
## Data sources 

The data were obtained from my [other repository](https://github.com/gennadyterekhov/skyrim_alchemy)  

## Issues

If you face any issues, don't hesitate to file them in the issues section.  