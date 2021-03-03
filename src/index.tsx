import { requireNativeComponent, ViewStyle } from 'react-native';

type QichangLiveFloatingViewProps = {
  color: string;
  style: ViewStyle;
};

export const QichangLiveFloatingView = requireNativeComponent<QichangLiveFloatingViewProps>(
  'QichangLiveFloatingViewView'
);
export default QichangLiveFloatingView;
