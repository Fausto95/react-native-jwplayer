import { requireNativeComponent } from 'react-native';

const RNJWPlayer = requireNativeComponent('JwPlayer', JwPlayer);

export default class JwPlayer extends Component {
  render() {
    return <RNJWPlayer {...this.props} />;
  }
}

JwPlayer.propTypes = {
  fileUri: PropTypes.string,
  playerKey: PropTypes.string,
};


export default JwPlayer;
