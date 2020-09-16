//
//  ViewController.m
//  MVCdemo
//
//  Created by 王旭 on 2020/9/14.
//  Copyright © 2020 王旭. All rights reserved.
//

#import "ViewController.h"
#import "goViewController.h"
#import "RViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _myView = [[VView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [_myView InitView];
    [_myView.loadBtn addTarget:self action:@selector(pressLoad) forControlEvents:UIControlEventTouchUpInside];
    [_myView.registerBtn addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_myView];
    
    _myModel = [[MModel alloc] init];
    [_myModel InitModel];
    
    [self.myModel addObserver:self forKeyPath:@"nameArr" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:@"123"];
}
- (void)pressLoad {
    for (int i = 0; i < _myModel.nameArr.count; i++) {
        if (([_myView.nameTextField.text isEqualToString:@"123"] && [_myView.passTextField.text isEqualToString:@"456"]) || _myModel.nameArr != nil) {
            goViewController *new = [goViewController new];
            [self presentViewController:new animated:YES completion:nil];
        }
    }
}
- (void)pressRegister {
    RViewController *registerV = [RViewController new];
    registerV.registerDelegate = self;
    registerV.modalPresentationStyle = 0;
    [self presentViewController:registerV animated:YES completion:nil];
}
- (void)passName:(NSString *)name passPass:(NSString *)pass {
    [_myModel.nameArr addObject:name];
    [_myModel.passArr addObject:pass];
    _myView.nameTextField.text = name;
    _myView.passTextField.text = pass;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.myView.nameTextField resignFirstResponder];
    [self.myView.passTextField resignFirstResponder];
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if (context == @"123" && object == self.myModel) {
        NSLog(@"old num:%@ new num:%@",[change valueForKey:@"old"], [change valueForKey:@"new"]);
    }
}
- (void)dealloc {
    [_myModel removeObserver:self forKeyPath:@"nameArr"];
}
@end
