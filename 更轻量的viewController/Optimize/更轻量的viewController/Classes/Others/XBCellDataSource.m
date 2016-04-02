//
//  XBPhotoDataSource.m
//  更轻量的viewController
//
//  Created by 李泽宇 on 16/4/2.
//  Copyright © 2016年 丶信步沧桑. All rights reserved.
//

#import "XBCellDataSource.h"




@interface XBCellDataSource ()

@property (nonatomic, strong) NSArray *datas;

@property (nonatomic, copy) NSString *cellIdentifier;

@property (nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;

@end


@implementation XBCellDataSource


- (instancetype)init {
    return nil;
}


- (instancetype)initWithDatas:(NSArray *)datas cellIdentifier:(NSString *)cellIdentifier configureCellBlock:(TableViewCellConfigureBlock)configureCellBlock {
    
    if (self = [super init]) {
        
        self.datas = datas;
        self.cellIdentifier = cellIdentifier;
        self.configureCellBlock = [configureCellBlock copy];
        
    }
    
    return self;
}


- (instancetype)dataWithIndexPath:(NSIndexPath *)indexPath {
    
    return self.datas[indexPath.row];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return self.datas.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    id cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    
    id data = [self dataWithIndexPath:indexPath];
    
    self.configureCellBlock(cell, data);
    
    return cell;
}



@end
