import React from 'react';
import PropTypes from 'prop-types';
import {requireNativeComponent} from 'react-native';


class JwPlayer extends React.Component {
  render() {
    return <RNJWPlayer {...this.props} />;
  }
}

JwPlayer.propTypes = {
  fileUri: PropTypes.string,
  playerKey: PropTypes.string,
};

const RNJWPlayer = requireNativeComponent('JwPlayer', JwPlayer);
export default JwPlayer;
