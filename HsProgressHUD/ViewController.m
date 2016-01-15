//
//  ViewController.m
//  HsProgressHUD
//
//  Created by 王金东 on 16/1/15.
//  Copyright © 2016年 王金东. All rights reserved.
//

#import "ViewController.h"
#import "HsProgressHUD/HsProgressHUD.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)progressShowAction:(id)sender {
    [HsProgressHUD showWithTitle:@"客户请稍后,数据马上奉上"];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5.0f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [HsProgressHUD showWithErrorTitle:@"功提交成功提交成功"];
    });
}
- (IBAction)progressDismissAction:(id)sender {
    [HsProgressHUD dismiss];
}
- (IBAction)progressSuccessAction:(id)sender {
    [HsProgressHUD showWithSucessTitle:@"提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功提交成功"];
}
- (IBAction)progressErrorAction:(id)sender {
    [HsProgressHUD showWithErrorTitle:@"提交失败提交失败提交失败提交失败"];
}
- (IBAction)progressWarnAction:(id)sender {
    [HsProgressHUD showWithWarnTitle:@"提交失败提交失败提交失败提交失败"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end