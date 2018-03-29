//
//  TipView.m
//  demo2
//
//  Created by 曾涛 on 2018/3/29.
//  Copyright © 2018年 liuchong. All rights reserved.
//

#import "TipView.h"
#import <Masonry/Masonry.h>
@interface TipView()
@property (nonatomic, strong) UILabel *dateLabel;
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UIButton *btn;
@end

@implementation TipView
- (instancetype)init
{
    if (self) {
        self = [super init];
        self.backgroundColor = [UIColor colorWithRed:252/255.0 green:247/255.0 blue:247/255.0 alpha:1/1.0];
        [self subLayaout];
    }
    return self;
}
- (void)subLayaout
{
    [self addSubview:self.dateLabel];
    [self addSubview:self.timeLabel];
    [self addSubview:self.btn];
    [_dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).with.offset(12);
        make.centerY.equalTo(self);
    }];
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
    [_btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).with.offset(-12);
        make.centerY.equalTo(self);
    }];
    
}

- (UILabel *)dateLabel
{
    if (!_dateLabel) {
        _dateLabel = [[UILabel alloc] init];
        _dateLabel.text = @"距867396期下注截止";
        _dateLabel.font =  [UIFont fontWithName:@"PingFangSC-Regular" size:12];
        _dateLabel.textColor = [UIColor colorWithRed:235/255.0 green:101/255.0 blue:101/255.0 alpha:1/1.0];
    }
    return _dateLabel;
}

- (UILabel *)timeLabel
{
    if (!_timeLabel) {
        _timeLabel = [[UILabel alloc] init];
        _timeLabel.textColor =  [UIColor colorWithRed:235/255.0 green:101/255.0 blue:101/255.0 alpha:1/1.0];
        _timeLabel.text = @"3分28秒";
        _timeLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
    }
    return _timeLabel;
}
- (UIButton *)btn
{
    if (!_btn) {
        _btn = [UIButton buttonWithType:UIButtonTypeCustom];
        UILabel *label = [[UILabel alloc] init];
        label.text = @"本期已投注(1)";
        label.textColor = [UIColor colorWithRed:235/255.0 green:101/255.0 blue:101/255.0 alpha:1/1.0];
        label.font = [UIFont fontWithName:@"PingFangSC-Regular" size:12];
        [_btn addSubview:label];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(_btn.mas_centerX);
            make.centerY.equalTo(_btn.mas_centerY);
            make.right.equalTo(_btn.mas_right).offset(0);
        }];
    }
    return _btn;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/



@end
