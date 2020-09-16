//
//  RViewController.m
//  MVCdemo
//
//  Created by 王旭 on 2020/9/14.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "RViewController.h"
#import "ViewController.h"
@interface RViewController ()

@end

@implementation RViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _myView = [[RView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [_myView InitView];
    [_myView.loadBtn addTarget:self action:@selector(pressLoad) forControlEvents:UIControlEventTouchUpInside];
    [_myView.registerBtn addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_myView];
    
    _myModel = [[RModel alloc] init];
}
//这是个返回按钮，但是我懒得改
- (void) pressLoad {
    //创建通知
    NSNotification *noti = [NSNotification notificationWithName:@"send" object:self userInfo:@{
        @"name":_myView.nameTextField.text,@"pass":_myView.passTextField.text
    }];
    //发布通知
    [[NSNotificationCenter defaultCenter] postNotification:noti];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void) pressRegister {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"你已成功注册!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"sure" style:UIAlertActionStyleCancel handler:^(UIAlertAction *sure) {
        if ([self.registerDelegate respondsToSelector:@selector(passName:passPass:)]) {
            [self.registerDelegate passName:self.myView.nameTextField.text passPass:self.myView.passTextField.text];
        }
         [self dismissViewControllerAnimated:NO completion:nil];
    }];
    [alert addAction:sure];
    [self presentViewController:alert animated:NO completion:nil];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.myView.nameTextField resignFirstResponder];
    [self.myView.passTextField resignFirstResponder];
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
