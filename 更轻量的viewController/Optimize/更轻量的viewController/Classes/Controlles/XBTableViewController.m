//
//  XBTableViewController.m
//  更轻量的viewController
//
//  Created by 李泽宇 on 16/4/1.
//  Copyright © 2016年 丶信步沧桑. All rights reserved.
//

#import "XBTableViewController.h"
#import "XBPhotoCell.h"
#import "XBCellDataSource.h"
#import "XBPhoto.h"

static NSString * const reuseIdentifier = @"photoCell";


@interface XBTableViewController ()

@property (nonatomic, strong) NSArray *photos;

@property (nonatomic, strong) XBCellDataSource *cellDataSource;

@end

@implementation XBTableViewController



- (NSArray *)photos {
    
    if (_photos == nil) {
        
        
        XBPhoto *photo1 = [XBPhoto new];
        XBPhoto *photo2 = [XBPhoto new];
        XBPhoto *photo3 = [XBPhoto new];
        XBPhoto *photo4 = [XBPhoto new];
        photo1.name = @"桃谷绘里香";
        photo2.name = @"水岛津实";
        photo3.name = @"小泽玛利亚";
        photo4.name = @"苍井空";
        
        _photos = @[photo1, photo2, photo3, photo4];
        
    }
    return _photos;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    TableViewCellConfigureBlock configureCell = ^(XBPhotoCell *cell, XBPhoto *photo) {
        
        [cell configureForPhoto:photo];
    };
    
    self.cellDataSource = [[XBCellDataSource alloc]initWithDatas:self.photos cellIdentifier:reuseIdentifier configureCellBlock:configureCell];
    
    
    self.tableView.dataSource = self.cellDataSource;
    
    
    [self.tableView registerClass:[XBPhotoCell class] forCellReuseIdentifier:reuseIdentifier];

}





@end
