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
        self.photoImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.photoImageView];
        [self.photoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(KMAS_HORIZONTAL_3X(50));
            make.centerY.mas_equalTo(0);
        }];
        
        self.titleLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.titleLabel];
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.photoImageView.mas_right).offset(KMAS_HORIZONTAL_3X(30));
            make.centerY.mas_equalTo(0);
        }];
        
        self.lineView = [[UIView alloc] init];
        [self.contentView addSubview:self.lineView];
        self.lineView.backgroundColor = UIColorSeparator;
        [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.bottom.mas_equalTo(0);
            make.height.mas_equalTo(0.5);
        }];
        
        self.desLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.desLabel];
        [self.desLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-KMAS_HORIZONTAL_3X(50));
            make.centerY.mas_equalTo(0);
        }];
    }
    return self;
}

- (void)setModel:(BaseModel *)model {
    self.titleLabel.text = model.title;
    self.titleLabel.font = model.titleFont;
    self.titleLabel.textColor = model.titleColor;
    
    self.desLabel.text = model.des;
    self.desLabel.textColor = model.desColor;
    self.desLabel.font = model.desFont;
    
    self.photoImageView.image = [UIImage imageNamed:model.imageName];
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
