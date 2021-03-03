import { requireNativeComponent, ViewStyle } from 'react-native';

type QichangLiveFloatingViewProps = {
  style: ViewStyle;
};

export const QichangLiveFloatingView = requireNativeComponent<QichangLiveFloatingViewProps>(
  'QichangLiveFloatingView'
);
export default QichangLiveFloatingView;
