import { requireNativeComponent, ViewStyle } from 'react-native';

type QichangLiveFloatingViewProps = {
  style: ViewStyle;
  onPress?: () => void;
  imageUrl?: string;
};

export const QichangLiveFloatingView = requireNativeComponent<QichangLiveFloatingViewProps>(
  'QichangLiveFloatingView'
);
export default QichangLiveFloatingView;
