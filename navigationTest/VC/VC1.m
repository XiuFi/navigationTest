//
//  VC1.m
//  navigationTest
//
//  Created by monda on 2018/4/2.
//  Copyright © 2018年 monda. All rights reserved.
//

#import "VC1.h"
#import "VC2.h"
@interface VC1 ()

@end

@implementation VC1

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.title = @"1";
    
    
    UIButton *btn  = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 50, 100, 100);
    [btn setTitle:@"VC1 Push" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}
- (void)push{
    VC2 *vc = [VC2 new];

    UINavigationController *navi2 = [[UINavigationController alloc]initWithRootViewController:vc];
    [self presentViewController:navi2 animated:YES
                     completion:nil];
}


@end
