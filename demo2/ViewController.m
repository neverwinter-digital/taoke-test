//
//  ViewController.m
//  demo2
//
//  Created by 曾涛 on 2018/3/29.
//  Copyright © 2018年 liuchong. All rights reserved.
//

#import "ViewController.h"
#import "TipView.h"
#import <Masonry/Masonry.h>
@interface ViewController ()
@property (nonatomic, strong) TipView *tipView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = false;
    self.view.backgroundColor = [UIColor whiteColor];
    self.tipView = [[TipView alloc] init];
    [self.view addSubview:self.tipView];
    [_tipView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).with.offset(0);
        make.left.equalTo(self.view).with.offset(0);
        make.right.equalTo(self.view).with.offset(0);
        make.height.mas_equalTo(30);
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
