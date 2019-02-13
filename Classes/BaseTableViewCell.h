//
//  BaseTableViewCell.h
//  test
//
//  Created by 安徽软云 on 2019/1/31.
//  Copyright © 2019 安徽软云科技. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *photoImageView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *desLabel;
@property (nonatomic, strong) UIView *lineView;

+ (instancetype)baseCellWithTableView:(UITableView *)tableView;

@end
