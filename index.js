//
//  Created by Faustino Kialungila on 08/09/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//


import React, {Component} from 'react';
import PropTypes from 'prop-types';
import {requireNativeComponent} from 'react-native';

const JWPlayer = requireNativeComponent('REACT_NATIVE_JW_PLAYER', JWPlayerView);

export default class JWPlayerView extends Component {
  render() {
    return <JWPlayer {...this.props} />;
  }
}

JWPlayerView.propTypes = {
  fileUri: PropTypes.string,
  playerKey: PropTypes.string,
};

