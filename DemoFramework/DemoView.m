//
//  DemoView.m
//  DemoFramework
//
//  Created by FunkingGuo on 15/3/23.
//  Copyright (c) 2015年 FunkingGuo. All rights reserved.
//

#import "DemoView.h"

@interface DemoView ()
@property (strong , nonatomic)UILabel *textLb;
@end

@implementation DemoView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _textLb = [[UILabel alloc]initWithFrame:self.bounds];
        [_textLb setBackgroundColor:[UIColor clearColor]];
        [_textLb setFont:[UIFont boldSystemFontOfSize:14]];
        [_textLb setTextColor:[UIColor whiteColor]];
        [_textLb setTextAlignment:NSTextAlignmentCenter];
        [self addSubview:_textLb];
        [self setBackgroundColor:[UIColor orangeColor]];
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 4.0;
    }
    return self;
}

- (void)showText:(NSString*)text
{
    [_textLb setText:text];
}

@end
