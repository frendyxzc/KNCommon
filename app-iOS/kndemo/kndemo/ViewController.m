//
//  ViewController.m
//  kndemo
//
//  Created by frendy xu on 2019/12/14.
//  Copyright © 2019 frendy xu. All rights reserved.
//

#import "ViewController.h"
#import "KN/KN.h"

@interface ViewController ()

@property(nonatomic, strong) UILabel *tips;

@property(nonatomic, strong) UILabel *tips2;

@property(nonatomic, strong) KNHelper *helper;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tips];
    [self.view addSubview:self.tips2];

    self.tips.text = [KNCommonKt createApplicationScreenMessageTips:@"haha"];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onClick)];
    [self.tips addGestureRecognizer:tap];

    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onClick2)];
    self.tips2.text = @"Hello world!";
    [self.tips2 addGestureRecognizer:tap2];
}

- (UILabel *)tips {
    if (!_tips) {
        _tips = [[UILabel alloc] initWithFrame:CGRectMake(40, 80, 200, 30)];
        _tips.userInteractionEnabled = YES;
    }
    return _tips;
}

- (void)onClick {
    [KNCommonKt talkWithCallbackName:@"iOS" say:^(NSString * _Nonnull it) {
        self.tips.text = [NSString stringWithFormat:@"%@ get out", it];
    }];
}

- (UILabel *)tips2 {
    if (!_tips2) {
        _tips2 = [[UILabel alloc] initWithFrame:CGRectMake(40, 80 + 80, 200, 30)];
        _tips2.userInteractionEnabled = YES;
    }
    return _tips2;
}

- (void)onClick2 {
    [self.helper addI:2 j:3];
}

- (KNHelper *)helper {
    if (!_helper) {
        _helper = [[KNHelper alloc] init];
        [_helper doInitHelper:self];
    }
    return _helper;
}

- (int32_t)handleI:(int32_t)i j:(int32_t)j {
    return (j - i);
}

- (void)resultI:(int32_t)i {
    self.tips2.text = [NSString stringWithFormat:@"get result : %d", i];

    [KNManager.manager logMsg:@"thanks"];
}

@end
