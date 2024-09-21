# horse_fit

A new Flutter project.

Clean Project
flutter pub cache clean 
y
flutter clean 
flutter pub get
flutter run --profile

flutter build apk --release

Clean Project for test flight
///! TODO Verify that the base url is change to production 
flutter pub cache clean 
y 
flutter clean 
flutter pub get 
cd ios 
pod update


Build Apk
///! TODO Verify that the base url is change to production
flutter pub cache clean
y
flutter clean
flutter pub get
flutter build appbundle

flutter build apk --release

Build Ios
flutter pub cache clean
y
flutter clean
flutter pub get
flutter build ios --release --no-codesign

Generate Models
dart run build_runner build --delete-conflicting-outputs
dart run build_runner watch --delete-conflicting-outputs
