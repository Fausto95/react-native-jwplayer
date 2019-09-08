
# @fausto95/react-native-jwplayer

## Getting started

`$ npm install @fausto95/react-native-jwplayer --save`

### Mostly automatic installation

`$ react-native link @fausto95/react-native-jwplayer`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `@fausto95/react-native-jwplayer` and add `RNJwplayer.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNJwplayer.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNJwplayerPackage;` to the imports at the top of the file
  - Add `new RNJwplayerPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':@fausto95/react-native-jwplayer'
  	project(':@fausto95/react-native-jwplayer').projectDir = new File(rootProject.projectDir, 	'../node_modules/@fausto95/react-native-jwplayer/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':@fausto95/react-native-jwplayer')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNJwplayer.sln` in `node_modules/@fausto95/react-native-jwplayer/windows/RNJwplayer.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Jwplayer.RNJwplayer;` to the usings at the top of the file
  - Add `new RNJwplayerPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import React from 'react';
import JWPlayer from '@fausto95/react-native-jwplayer';
import {
  View,
} from 'react-native';

const App = () => {
  return (
    <View>
			<JWPlayer
				fileUri="http://example.com/hls.m3u8"
				playerKey="EXAMPLEPKEY85532/fnjetgdf"
				style={styles.player}
			/>
    </View>
  );
};

const styles = StyleSheet.create({
  player: {
    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center',
    width: 360,
    height: 180,
  },
});
export default App;
```

### TODO

- [x] iOS

- [ ] Android

- [ ] Tracks(Subtitles)

- [ ] Thumbnail

- [ ] Playback Controls Functions

- [ ] Playlist

- [ ] Skinning
