//
//  BusModel.m
//  MoblieCQUPT_iOS
//
//  Created by 丁磊 on 2018/8/14.
//  Copyright © 2018年 Orange-W. All rights reserved.
//

#import "BusModel.h"

@implementation BusModel

- (instancetype)initWithDic:(NSDictionary*)dic
{
    self = [super init];
    if (self) {
        self.title = dic[@"name"];
        self.content = dic[@"content"];
        self.arr = dic[@"picture"];
        self.imgArray = [self imageWithArray:self.arr];
    }
    return self;
}

- (NSMutableArray *)imageWithArray:(NSArray *)arr{
    NSMutableArray *imgArr = [[NSMutableArray alloc]init];
    imgArr = [@[] mutableCopy];
    for (int i = 0; i < arr.count; i++) {
        NSString *str = [NSString stringWithFormat:@"http://wx.yyeke.com/welcome2018%@",self.arr[i]];
        NSDate *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString: str]];
        UIImage *img = [UIImage imageWithData:imageData];
//        UIImage *img = [UIImage imageNamed:Arr[i]];
        [imgArr addObject:img];
    }
    return imgArr;
}

+ (instancetype)BusAndDeleModelWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDic:dict];
}

@end
