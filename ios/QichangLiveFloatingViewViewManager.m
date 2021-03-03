#import <React/RCTViewManager.h>
#import "QichangLiveFloatingView.h"

@interface QichangLiveFloatingViewViewManager  : RCTViewManager
@end

@implementation QichangLiveFloatingViewViewManager

RCT_EXPORT_MODULE(QichangLiveFloatingView)

- (UIView *)view
{
  return [[QichangLiveFloatingView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(onPress,RCTBubblingEventBlock)


- hexStringToColor:(NSString *)stringToConvert
{
  NSString *noHashString = [stringToConvert stringByReplacingOccurrencesOfString:@"#" withString:@""];
  NSScanner *stringScanner = [NSScanner scannerWithString:noHashString];

  unsigned hex;
  if (![stringScanner scanHexInt:&hex]) return nil;
  int r = (hex >> 16) & 0xFF;
  int g = (hex >> 8) & 0xFF;
  int b = (hex) & 0xFF;

  return [UIColor colorWithRed:r / 255.0f green:g / 255.0f blue:b / 255.0f alpha:1.0f];
}



@end
