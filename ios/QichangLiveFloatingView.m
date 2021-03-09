//
//  QichangLiveFloatingView.m
//  QichangLiveFloatingView
//
//  Created by Damoness on 2021/3/1.
//  Copyright © 2021 Facebook. All rights reserved.
//

#import "QichangLiveFloatingView.h"
#import <Masonry/Masonry.h>
#import <FLAnimatedImage/FLAnimatedImage.h>
#import <React/RCTImageView.h>

@interface QichangLiveFloatingView ()

@property (nonatomic, copy)  RCTBubblingEventBlock onPress;
@property (nonatomic, copy)  NSString *imageUrl;

@property (nonatomic,strong) FLAnimatedImageView *imageView;

@end

@implementation QichangLiveFloatingView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        
        NSLog(@"QichangLiveFloatingView:%@",NSStringFromCGRect(self.frame));
        
        FLAnimatedImageView *imageView = [[FLAnimatedImageView alloc]init];
        
        NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"image" ofType:@"gif"];
        
        imageView.animatedImage = [[FLAnimatedImage alloc]initWithAnimatedGIFData:[NSData dataWithContentsOfFile:imagePath]];
        
        self.imageView = imageView;
        
        [self addSubview:imageView];
        
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.height.width.mas_equalTo(@75);
            make.center.mas_equalTo(self);
            
        }];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onPressAction)];
        imageView.userInteractionEnabled = YES;
        [imageView addGestureRecognizer:tap];
        
        
    }
    return self;
}


-(void)setImageUrl:(NSString *)imageUrl{
    
    if(imageUrl != self.imageUrl){
        self.imageView.animatedImage = [[FLAnimatedImage alloc]initWithAnimatedGIFData:[NSData dataWithContentsOfURL:[NSURL URLWithString:imageUrl]]];
    }
    
}

-(void)onPressAction{
    NSLog(@"QichangLiveFloatingView: onPress");
    if(self.onPress){
        self.onPress(NULL);
    }
}

-(void)layoutSubviews{
    NSLog(@"QichangLiveFloatingView:%@",NSStringFromCGRect(self.frame));
}




@end
