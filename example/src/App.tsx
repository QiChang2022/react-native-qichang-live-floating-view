import * as React from 'react';

import { StyleSheet, View } from 'react-native';
import QichangLiveFloatingView from 'react-native-qichang-live-floating-view';

// const testUrl1 =
//   'https://qichangv-pic.oss-cn-zhangjiakou.aliyuncs.com/detail/course/2020-01-13/ad47294972114a1095aa6dbeaf2285a3.gif';
const testUrl2 = 'https://i.stack.imgur.com/1dpmw.gif';

export default function App() {
  return (
    <View style={styles.container}>
      <QichangLiveFloatingView
        style={styles.box}
        onPress={() => {
          console.log('11');
        }}
        imageUrl={testUrl2}
      />
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
    //backgroundColor: 'blue',
    width: 100,
    height: 100,
    marginVertical: 20,
  },
});
