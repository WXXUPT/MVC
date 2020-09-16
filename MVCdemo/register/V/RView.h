//
//  RView.h
//  MVCdemo
//
//  Created by 王旭 on 2020/9/14.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RView : UIView
@property (nonatomic, strong) UIButton *loadBtn;
@property (nonatomic, strong) UIButton *registerBtn;
@property (nonatomic, strong) UITextField *nameTextField;
@property (nonatomic, strong) UITextField *passTextField;
- (void)InitView;
@end

NS_ASSUME_NONNULL_END
