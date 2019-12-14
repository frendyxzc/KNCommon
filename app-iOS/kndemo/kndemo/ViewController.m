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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tips];

    self.tips.text = [KNCommonKt createApplicationScreenMessageTips:@"haha"];
}

- (UILabel *)tips {
    if (!_tips) {
        _tips = [[UILabel alloc] initWithFrame:CGRectMake(40, 80, 200, 30)];
    }
    return _tips;
}

@end
