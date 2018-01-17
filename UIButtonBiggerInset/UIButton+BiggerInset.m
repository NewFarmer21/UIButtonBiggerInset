//
//  UIButton+BiggerInset.m
//  UIButtonBiggerInset
//
//  Created by DangGuo on 2018/1/14.
//  Copyright © 2018年 dangguo.github.com. All rights reserved.
//

#import "UIButton+BiggerInset.h"
#import <objc/runtime.h>

static const NSString *biggerInset = @"UIButtonBiggerInset";

@implementation UIButton (BiggerInset)

- (void)setEdgeInsets:(UIEdgeInsets)edgeInsets {
    NSValue *value = [NSValue valueWithUIEdgeInsets:edgeInsets];
    objc_setAssociatedObject(self, &biggerInset, value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIEdgeInsets)edgeInsets {
    NSValue *edgeInsetsValue = objc_getAssociatedObject(self, &biggerInset);
    UIEdgeInsets edgeInsets;
    [edgeInsetsValue getValue:&edgeInsets];
    return edgeInsets;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    CGRect rect = UIEdgeInsetsInsetRect(self.bounds, self.edgeInsets);
    return CGRectContainsPoint(rect, point);
}

@end
