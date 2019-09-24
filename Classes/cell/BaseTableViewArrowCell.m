//
//  BaseTableViewArrowCell.m
//  test
//
//  Created by 安徽软云 on 2019/2/13.
//  Copyright © 2019 安徽软云科技. All rights reserved.
//

#import "BaseTableViewArrowCell.h"

@implementation BaseTableViewArrowCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.arrowImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.arrowImageView];
        [self.arrowImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-KMAS_HORIZONTAL_3X(30));
            make.centerY.mas_equalTo(0);
        }];
        
        [self.desLabel mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(self.arrowImageView.mas_left).offset(KMAS_HORIZONTAL_3X(30));
            make.centerY.mas_equalTo(0);
        }];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
