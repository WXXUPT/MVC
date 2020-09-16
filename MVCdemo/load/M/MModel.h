//
//  MModel.h
//  MVCdemo
//
//  Created by 王旭 on 2020/9/14.
//  Copyright © 2020 王旭. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MModel : NSObject
@property (nonatomic, strong) NSMutableArray *nameArr;
@property (nonatomic, strong) NSMutableArray *passArr;
- (void)InitModel;
@end

NS_ASSUME_NONNULL_END
