//
//  ViewController.m
//  JBAlertView
//
//  Created by jaybin on 15/5/27.
//  Copyright (c) 2015年 jaybin. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertView+JBAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _textView = [[UITextView alloc] initWithFrame:CGRectMake(40, 450, 300, 100)];
    [_textView setFont:[UIFont systemFontOfSize:16]];
    [_textView setTextColor:[UIColor redColor]];
    [_textView setTextAlignment:NSTextAlignmentCenter];
    [self.view addSubview:_textView];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn1 setBackgroundColor:[UIColor lightGrayColor]];
    [btn1 setTitle:@"show alert1" forState:UIControlStateNormal];
    btn1.frame = CGRectMake(150, 100, 100, 50);
    [btn1 addTarget:self action:@selector(showAlertView1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setTitle:@"show alert2" forState:UIControlStateNormal];
    [btn2 setBackgroundColor:[UIColor lightGrayColor]];
    btn2.frame = CGRectMake(150, 200, 100, 50);
    [btn2 addTarget:self action:@selector(showAlertView2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn3 setTitle:@"show alert3" forState:UIControlStateNormal];
    [btn3 setBackgroundColor:[UIColor lightGrayColor]];
    btn3.frame = CGRectMake(150, 300, 100, 50);
    [btn3 addTarget:self action:@selector(showAlertView3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
}

- (void)showAlertView1{
    UIAlertView *alertView1 = [[UIAlertView alloc] initWithTitle:@"alertView1" message:nil delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
    alertView1.alertViewBlock = ^(NSInteger index){
        
        if(1==index){
            NSLog(@"click OK_button");
        }
        else if (0==index){
            NSLog(@"click Cancel_button");
        }
        
        [self setDescText:NSStringFromSelector(_cmd) index:index];
        
    };
    
    [alertView1 show];
    
}

- (void)showAlertView2{
    UIAlertView *alertView2 = [[UIAlertView alloc] initWithTitle:@"alertView2" message:nil delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
    alertView2.alertViewBlock = ^(NSInteger index){
        
        if(1==index){
            NSLog(@"click OK_button");
        }
        else if (0==index){
            NSLog(@"click Cancel_button");
        }

        [self setDescText:NSStringFromSelector(_cmd) index:index];
        
    };
    [alertView2 show];
}

- (void)showAlertView3{
    UIAlertView *alertView3 = [[UIAlertView alloc] initWithTitle:@"alertView3" message:nil delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
    alertView3.alertViewBlock = ^(NSInteger index){
        
        if(1==index){
            NSLog(@"click OK_button");
        }
        else if (0==index){
            NSLog(@"click Cancel_button");
        }
        
        [self setDescText:NSStringFromSelector(_cmd) index:index];
    };
    [alertView3 show];
}

- (void)setDescText:(NSString *)text index:(NSInteger)index{
    NSString *btnTitle = index==0? @"CancelButtond":@"OKButtond";
    [_textView setText:[NSString stringWithFormat:@"%@  %@",text,btnTitle]];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    alertView.alertViewBlock(buttonIndex);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
