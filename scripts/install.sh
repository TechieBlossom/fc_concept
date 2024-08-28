#!/bin/bash

SDK_VERSION=">=3.5.1 <4.0.0"
FLUTTER_VERSION="3.24.1"

# Replace workspace Flutter version with the specified one
sed -i "" "s/ sdk: \'[<>=0-9. ]*\'/ sdk: \"$SDK_VERSION\"/" pubspec.yaml
sed -i "" "s/ sdk: \'[<>=0-9. ]*\'/ flutter: \"$FLUTTER_VERSION\"/" pubspec.yaml

# Replace sdk and  Flutter versions in all pubspec.yaml files with the specified ones
melos exec -c 10 -- "sed -i '' 's/ sdk: \"[<>=0-9. ]*\"/ sdk: \"$SDK_VERSION\"/' pubspec.yaml"
melos exec -c 10 -- "sed -i '' 's/ flutter: \"[<>=0-9. ]*\"/ flutter: \"$FLUTTER_VERSION\"/' pubspec.yaml"
