import { requireNativeComponent, ViewStyle } from 'react-native';

type QichangLiveFloatingViewProps = {
  color: string;
  style: ViewStyle;
};

export const QichangLiveFloatingViewViewManager = requireNativeComponent<QichangLiveFloatingViewProps>(
  'QichangLiveFloatingViewView'
);

export default QichangLiveFloatingViewViewManager;
