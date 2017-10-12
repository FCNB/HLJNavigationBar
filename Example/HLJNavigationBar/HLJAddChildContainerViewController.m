//
//  HLJAddChildContainerViewController.m
//  HLJNavigationBar_Example
//
//  Created by 吴晓辉 on 2017/9/4.
//  Copyright © 2017年 bullet_wu. All rights reserved.
//

#import "HLJAddChildContainerViewController.h"
#import "HLJColorGradientViewController.h"
#import "UIViewController+HLJNavigationBar.h"
#import "Masonry.h"

@interface HLJAddChildContainerViewController ()<UINavigationControllerDelegate>

@end

@implementation HLJAddChildContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.extendedLayoutIncludesOpaqueBars = YES;
    self.view.backgroundColor = [UIColor whiteColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        HLJColorGradientViewController *viewController = [[HLJColorGradientViewController alloc] init];
        [self addChildViewController:viewController];
        [viewController setValue:self.navigationItem forKey:@"_navigationItem"];
        viewController.title = @"测试";
        viewController.view.frame = self.view.bounds;
        [self.view addSubview:viewController.view];
    });

}



@end
