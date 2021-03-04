import * as React from 'react';

import { StyleSheet, View } from 'react-native';
import QichangLiveFloatingView from 'react-native-qichang-live-floating-view';

export default function App() {
  return (
    <View style={styles.container}>
      <QichangLiveFloatingView style={styles.box} onPress={() => {}} />
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
    backgroundColor: 'red',
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
