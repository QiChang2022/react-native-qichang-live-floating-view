import { requireNativeComponent, ViewStyle, StyleProp } from 'react-native';

type QichangLiveFloatingViewProps = {
  style?: StyleProp<ViewStyle>;
  onPress?: () => void;
  imageUrl?: string;
};

export const QichangLiveFloatingView = requireNativeComponent<QichangLiveFloatingViewProps>(
  'QichangLiveFloatingView'
);
export default QichangLiveFloatingView;
