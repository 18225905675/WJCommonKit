//
//  BaseTableViewCell.m
//  test
//
//  Created by 安徽软云 on 2019/1/31.
//  Copyright © 2019 安徽软云科技. All rights reserved.
//

#import "BaseTableViewCell.h"

@implementation BaseTableViewCell

+ (instancetype)baseCellWithTableView:(UITableView *)tableView {
    NSString *ID = NSStringFromClass([self class]);
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[BaseTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
