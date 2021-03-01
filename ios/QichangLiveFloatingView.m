//
//  QichangLiveFloatingView.m
//  QichangLiveFloatingView
//
//  Created by Damoness on 2021/3/1.
//  Copyright © 2021 Facebook. All rights reserved.
//

#import "QichangLiveFloatingView.h"

@interface QichangLiveFloatingView ()

@property (nonatomic,strong) NSString *name;


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
        
        UITextView *textView = [[UITextView alloc]init];
        
        [textView setText:@"2222"];
        
        [self addSubview:textView];
    }
    return self;
}

@end
