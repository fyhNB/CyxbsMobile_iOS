//
//  WYCClassmateScheduleShowDetailView.h
//  MoblieCQUPT_iOS
//
//  Created by 王一成 on 2018/9/22.
//  Copyright © 2018年 Orange-W. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface WYCClassmateScheduleShowDetailView : UIView


@property (nonatomic, copy) NSString *classNum;
- (void)initViewWithArray:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END