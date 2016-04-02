//
//  XBPhotoDataSource.h
//  更轻量的viewController
//
//  Created by 李泽宇 on 16/4/2.
//  Copyright © 2016年 丶信步沧桑. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^TableViewCellConfigureBlock)(id cell, id data);


@interface XBCellDataSource : NSObject<UITableViewDataSource>

- (instancetype)initWithDatas:(NSArray *)datas cellIdentifier:(NSString *)cellIdentifier configureCellBlock:(TableViewCellConfigureBlock)configureCellBlock;

- (instancetype)dataWithIndexPath:(NSIndexPath *)indexPath;

@end
