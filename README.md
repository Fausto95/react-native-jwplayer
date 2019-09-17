
# JWPlayer Component For React Native

## Getting started

`$ npm install @fausto95/react-native-jwplayer --save`

### Linking

> If you're using react-native ^0.60, the linking is handled by default

`$ react-native link @fausto95/react-native-jwplayer`


## Usage
```javascript
import React from 'react';
import {View} from 'react-native';
import JWPlayer from '@fausto95/react-native-jwplayer';

const App = () => {
  return (
    <View style={styles.container}>
      <JWPlayer
        fileUri="https://content.jwplatform.com/manifests/yp34SRmf.m3u8"
        playerKey="EXAMPLEOFKEY/YOUR_PLAYER_KEY_GOES_HERE"
        style={styles.player}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    display: 'flex',
    justifyContent: 'center',
    alignItems: 'center',
  },
  player: {
    width: 360,
    height: 180,
  },
});
export default App;
```

### Props
  - `fileUri`: Link for the video file.
  - `playerKey`: Your JWPlayer key.


### TODO

- [x] iOS

- [ ] Android

- [ ] Tracks(Subtitles)

- [ ] Thumbnail

- [ ] Playback Controls Functions

- [ ] Playlist

- [ ] Skinning


### Contributions

Any contribution is welcome, send PR 😎.
