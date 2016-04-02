//
//  XBPhotoCell.m
//  更轻量的viewController
//
//  Created by 李泽宇 on 16/4/1.
//  Copyright © 2016年 丶信步沧桑. All rights reserved.
//

#import "XBPhotoCell.h"
#import "XBPhoto.h"


@implementation XBPhotoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    
}

- (void)configureForPhoto:(XBPhoto *)photo {
    
    self.textLabel.text = photo.name;
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
}

@end
