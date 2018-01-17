//
//  ViewController.m
//  UIButtonBiggerInset
//
//  Created by DangGuo on 2018/1/14.
//  Copyright © 2018年 dangguo.github.com. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+BiggerInset.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *btn1;

@property (nonatomic, strong) UIButton *btn2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.btn1];
    [self.view addSubview:self.btn2];
    
    self.btn1.frame = CGRectMake(20, 100, 100, 44);
    self.btn2.frame = CGRectMake(20, 200, 100, 44);
    
    self.btn1.edgeInsets = UIEdgeInsetsMake(-10, -10, -10, -10);
    self.btn2.edgeInsets = UIEdgeInsetsMake(-20, -20, -20, -20);
}

- (UIButton *)btn1 {
    if ( !_btn1 ) {
        _btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [_btn1 setTitle:@"-10" forState:UIControlStateNormal];
        [_btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _btn1.layer.borderColor = [UIColor redColor].CGColor;
        _btn1.layer.borderWidth = 1;
        [_btn1 addTarget:self action:@selector(btn1Clicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn1;
}

- (UIButton *)btn2 {
    if ( !_btn2 ) {
        _btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [_btn2 setTitle:@"-10" forState:UIControlStateNormal];
        [_btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _btn2.layer.borderColor = [UIColor redColor].CGColor;
        _btn2.layer.borderWidth = 1;
        [_btn2 addTarget:self action:@selector(btn2Clicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _btn2;
}

- (void)btn1Clicked:(UIButton *)btn {
    NSLog(@"%s", __func__);
}


- (void)btn2Clicked:(UIButton *)btn {
    NSLog(@"%s", __func__);
}

@end
