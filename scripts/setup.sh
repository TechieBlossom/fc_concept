#!/bin/bash

### Setup
echo "\nSetting up the project..."

melos clean && echo "------------------ Melos cleaned project ------------------" || exit 1
flutter clean && echo "------------------ Flutter cleaned project ------------------" || exit 1
sudo rm -rf ~/.pub-cache && echo "------------------ .pub-cache deleted ------------------" || exit 1
find . -name "pubspec.lock" -type f -exec rm -f {} \; && echo "------------------ pubspec.lock files deleted ------------------" || exit 1
find . -name "injector.config.dart" -type f -exec rm -f {} \; && echo "------------------ injector.config.dart files deleted ------------------" || exit 1
flutter pub get && echo "------------------ Flutter dependencies loaded ------------------" || exit 1
dart pub global activate melos && echo "------------------ melos activated ------------------" || exit 1
dart pub global activate flutterfire_cli && echo "------------------ flutterfire_cli activated ------------------" || exit 1
melos get && echo "------------------ All packages dependencies loaded ------------------" || exit 1
melos gen && echo "------------------ All packages dependencies loaded ------------------" || exit 1
