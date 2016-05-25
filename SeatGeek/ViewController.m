//
//  ViewController.m
//  SeatGeek
//
//  Created by Armando on 24/05/16.
//  Copyright © 2016 Armando. All rights reserved.
//

#import "ViewController.h"
#import "VerticalSpreadView.h"

@interface ViewController ()
@property (nonatomic, strong) VerticalSpreadView *subView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.subView addSubview:[self generateLabelWithText]];
    [self.subView addSubview:[self generateLabelWithText]];
    [self.subView addSubview:[self generateLabelWithText]];
    [self.subView addSubview:[self generateLabelWithText]];
    [self.subView addSubview:[self generateLabelWithText]];
    [self.subView addSubview:[self generateLabelWithText]];
    [self.subView addSubview:[self generateLabelWithText]];
    [self.subView addSubview:[self generateLabelWithText]];
    [self.subView layoutIfNeeded];
    
    [self.view addSubview:self.subView];
}

- (UILabel *)generateLabelWithText{
    UILabel *label = [[UILabel alloc] init];
    label.text = [NSString stringWithFormat:@"Label %lu", (unsigned long)[[self.subView subviews] count] + 1];
    label.backgroundColor = [UIColor blueColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor whiteColor];
    label.layer.cornerRadius = 10.0;
    label.layer.masksToBounds = YES;
    return label;
}

-(VerticalSpreadView *)subView{
    if(_subView == nil){
        _subView = [[VerticalSpreadView alloc] initWithView:self.view];
    }
    return _subView;
}

@end
