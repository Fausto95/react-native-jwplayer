# react-native-jwplayer

## Getting started

`$ npm install react-native-jwplayer --save`

### Mostly automatic installation

`$ react-native link react-native-jwplayer`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-jwplayer` and add `Jwplayer.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libJwplayer.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.reactlibrary.JwplayerPackage;` to the imports at the top of the file
  - Add `new JwplayerPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-jwplayer'
  	project(':react-native-jwplayer').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-jwplayer/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-jwplayer')
  	```


## Usage
```javascript
import Jwplayer from 'react-native-jwplayer';

// TODO: What to do with the module?
Jwplayer;
```
