//
//  UIAlertView+JBAlertView.m
//  JBAlertView
//
//  Created by jaybin on 15/4/25.
//  Copyright (c) 2015年 jaybin. All rights reserved.
//

#import "UIAlertView+JBAlertView.h"
#import <objc/runtime.h>

@implementation UIAlertView (JBAlertView)

-(JBAlertViewBlock)alertViewBlock{
    return objc_getAssociatedObject(self, @selector(alertViewBlock));
}

-(void)setAlertViewBlock:(JBAlertViewBlock)block{
    objc_setAssociatedObject(self, @selector(alertViewBlock), block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
