//
//  RViewController.h
//  MVCdemo
//
//  Created by 王旭 on 2020/9/14.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RView.h"
#import "RModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol RegisterDelegate <NSObject>

- (void)passName:(NSString *)name passPass: (NSString *)pass;

@end
@interface RViewController : UIViewController
@property (nonatomic, strong) RView *myView;
@property (nonatomic, strong) RModel *myModel;
@property id <RegisterDelegate> registerDelegate;
@end

NS_ASSUME_NONNULL_END
