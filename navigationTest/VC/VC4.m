//
//  VC4.m
//  navigationTest
//
//  Created by monda on 2018/4/2.
//  Copyright © 2018年 monda. All rights reserved.
//

#import "VC4.h"

@interface VC4 ()

@end

@implementation VC4

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"成功";
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
