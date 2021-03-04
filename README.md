# react-native-qichang-live-floating-view

汽场直播悬浮框

## Installation

```sh
npm install react-native-qichang-live-floating-view

```

## Usage

```js
import QichangLiveFloatingView from "react-native-qichang-live-floating-view";

//汽场直播悬浮视图
<QichangLiveFloatingView style={{background:'red'}} onPress={() => {}} />
```

## Summary

### iOS

1.包含资源文件
  1. 在 .podspec  文件中设置 s.resources   = "path/to/assets"
  2. 在代码中获取到路径 [[NSBundle mainBundle] pathForResource:@"image" ofType:@"gif"];

2.设置第三方依赖库

  在 .podspec 文件中增加
  s.dependency "Masonry"
  s.dependency "FLAnimatedImage"

### android


## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT
