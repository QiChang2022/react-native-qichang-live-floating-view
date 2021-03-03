import * as React from 'react';

import { StyleSheet, View } from 'react-native';
import QichangLiveFloatingViewViewManager from 'react-native-qichang-live-floating-view';

export default function App() {
  return (
    <View style={styles.container}>
      <QichangLiveFloatingViewViewManager style={styles.box} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
