//
//  UIAlertView+JBAlertView.h
//  JBAlertView
//
//  Created by jaybin on 15/4/25.
//  Copyright (c) 2015年 jaybin. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  JBAlertViewBlock  
 *  -(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
 *  cancel:0   
 *  ok:1
 */
typedef void (^JBAlertViewBlock)(NSInteger index);

@interface UIAlertView (JBAlertView)

@property (nonatomic, copy) JBAlertViewBlock alertViewBlock;

@end
