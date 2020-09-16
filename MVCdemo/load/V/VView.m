//
//  VView.m
//  MVCdemo
//
//  Created by 王旭 on 2020/9/14.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "VView.h"

@implementation VView

- (void)InitView {
    _loadBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _registerBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 250, 300, 50)];
    _passTextField = [[UITextField alloc] initWithFrame:CGRectMake(50, 350, 300, 50)];
    
    [_loadBtn setTitle:@"登陆" forState:UIControlStateNormal];
    [_registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [_loadBtn setFrame:CGRectMake(80, 450, 100, 50)];
    [_registerBtn setFrame:CGRectMake(230, 450, 100, 50)];
    
    [_loadBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_registerBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [self addSubview:_loadBtn];
    [self addSubview:_registerBtn];
    
    _nameTextField.layer.masksToBounds = YES;
    _nameTextField.layer.cornerRadius = 5;
    _nameTextField.layer.borderWidth = 2;
    _nameTextField.layer.borderColor = [UIColor blackColor].CGColor;
    _nameTextField.placeholder = @"请输入用户名";
    
    _passTextField.layer.masksToBounds = YES;
    _passTextField.layer.cornerRadius = 5;
    _passTextField.layer.borderWidth = 2;
    _passTextField.layer.borderColor = [UIColor blackColor].CGColor;
    _passTextField.placeholder = @"请输入密码";
    
    [self addSubview:_nameTextField];
    [self addSubview:_passTextField];
}

@end
