//
//  ViewController.h
//  MVCdemo
//
//  Created by 王旭 on 2020/9/14.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RViewController.h"
#import "VView.h"
#import "MModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface ViewController : UIViewController
<RegisterDelegate>

@property (nonatomic, strong) VView *myView;
@property (nonatomic, strong) MModel *myModel;
@end

NS_ASSUME_NONNULL_END
