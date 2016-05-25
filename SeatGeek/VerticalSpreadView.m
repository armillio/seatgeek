//
//  LayoutSubview.m
//  SeatGeek
//
//  Created by Armando on 24/05/16.
//  Copyright © 2016 Armando. All rights reserved.
//

#import "VerticalSpreadView.h"

@interface VerticalSpreadView()
@property (nonatomic, assign) CGRect mainFrame;
@end

@implementation VerticalSpreadView

- (instancetype)initWithView:(UIView *)view
{
    self = [super init];
    if (self) {
        _mainFrame = view.frame;
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    NSArray *viewArray = [self subviews];
    NSUInteger numberOfViews = [[self subviews] count];
    int viewPadding = 0;
    CGRect tempRect = CGRectMake(0, 0, 0, 0);
    for (UIView *actualView in viewArray){
        CGRect actualViewRect = CGRectMake(0, viewPadding + tempRect.origin.y + tempRect.size.height,
                                           self.mainFrame.size.width, (self.mainFrame.size.height / numberOfViews) - viewPadding);
        actualView.frame = actualViewRect;
        tempRect = actualView.frame;
        viewPadding = 20;
    }
}

@end
