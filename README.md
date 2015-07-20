JBAlertView(UIAlertView+JBAlertView)
===================================

Overview
----------------------------------
JBAlertView为UIAlertView动态添加一个Block属性，将AlertView与button的点击操作关联，简单的区分处理一个视图有多个AlertView弹窗

![github](https://raw.githubusercontent.com/jaybinhe/JBAlertView/master/JBAlertView/screenshots/jb_alertview.gif)

Usage
----------------------------------
初始化AlertView，设置Block<br>
``` objc
#import "UIAlertView+JBAlertView.h"


//初始化AlertView1
UIAlertView *alertView1 = [[UIAlertView alloc] initWithTitle:@"alertView1" message:nil delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
    alertView1.alertViewBlock = ^(NSInteger index){

    if(1==index){
        NSLog(@"click OK_button");
    }
    else if (0==index){
        NSLog(@"click Cancel_button");
    }

    };

[alertView1 show];


//初始化AlertView2
UIAlertView *alertView2 = [[UIAlertView alloc] initWithTitle:@"alertView2" message:nil delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", nil];
    alertView2.alertViewBlock = ^(NSInteger index){

    if(1==index){
        NSLog(@"click OK_button");
    }
    else if (0==index){
        NSLog(@"click Cancel_button");
    }

};

[alertView2 show];

```

实现UIAlertViewDelegate方法<br>
``` objc
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    alertView.alertViewBlock(buttonIndex);
}

```

