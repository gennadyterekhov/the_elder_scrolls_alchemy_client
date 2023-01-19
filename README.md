<a href="https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client/actions">
    <img src="https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client/workflows/test-ci/badge.svg" alt="Build Status">
</a>

# the_elder_scrolls_alchemy_client

Library of alchemy ingredients and effects from TES games.  
You can see all the ingredients that have some specific effect - or see all the effects of every ingredient.  

Supported games:  
1. Skyrim
2. Oblivion
3. Morrowind


[web version](https://the-elder-scrolls-alchemy.website.yandexcloud.net/#/)  
[android](https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client/tree/main/public/android)  
[ios](https://github.com/gennadyterekhov/the_elder_scrolls_alchemy_client/tree/main/public/ios)  

## How to run

the most basic way to lauch the app:  
`flutter run -d chrome`  
this command opens chrome window with the app in debug mode  

for more commands, see [flutter documentation](https://docs.flutter.dev/get-started/test-drive?tab=terminal)  

### Building

when building for a new release (substitute correct build number):  
`flutter build apk --build-number=3 --build-name=3.0.0`
  

Install release app on device:  
`flutter run --release`

### Test  

[how to run integration test in browser](https://docs.flutter.dev/testing/integration-tests#running-in-a-browser)

this command runs specific integration test  
`flutter drive --driver integration_test/driver.dart --target integration_test/full_test.dart --no-dds`  

this command runs cpecific widget/unit test  
`flutter test test/data/data_source_test.dart`  



 
## Data sources 

The data were obtained from my [other repository](https://github.com/gennadyterekhov/skyrim_alchemy)  

## Issues

If you face any issues, don't hesitate to file them in the issues section.  