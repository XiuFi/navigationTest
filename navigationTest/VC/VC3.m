//
//  VC3.m
//  navigationTest
//
//  Created by monda on 2018/4/2.
//  Copyright © 2018年 monda. All rights reserved.
//

#import "VC3.h"
#import "VC2.h"
@interface VC3 ()

@end

@implementation VC3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"3";
    
    UIButton *btn  = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 50, 100, 100);
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"VC3 Push" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)push{
    VC2 *vc = [VC2 new];
//    [self.navigationController pushViewController:vc animated:YES];
    UINavigationController *navi2 = [[UINavigationController alloc]initWithRootViewController:vc];
    [self presentViewController:navi2 animated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
