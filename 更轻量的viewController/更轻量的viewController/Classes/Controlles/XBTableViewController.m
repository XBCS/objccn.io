//
//  XBTableViewController.m
//  更轻量的viewController
//
//  Created by 李泽宇 on 16/4/1.
//  Copyright © 2016年 丶信步沧桑. All rights reserved.
//

#import "XBTableViewController.h"
#import "XBPhotoCell.h"


static NSString * const reuseIdentifier = @"photoCell";


@interface XBTableViewController ()

@property (nonatomic, strong) NSArray *photos;

@end

@implementation XBTableViewController



- (NSArray *)photos {
    
    if (_photos == nil) {
        _photos = @[@"桃谷绘里香", @"水岛津实", @"小泽玛利亚", @"苍井空"];
    }
    return _photos;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[XBPhotoCell class] forCellReuseIdentifier:reuseIdentifier];

}



#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return self.photos.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    XBPhotoCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    NSString *photo = self.photos[indexPath.row];
    
    cell.textLabel.text = photo;
    
    return cell;
}


@end
