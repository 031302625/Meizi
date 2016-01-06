//
//  ZCMainViewController.m
//  Meizi
//
//  Created by 朱立焜 on 16/1/6.
//  Copyright © 2016年 朱立焜. All rights reserved.
//

#import "ZCMainViewController.h"
#import "NSString+ZCHtmlBodyString.h"

@interface ZCMainViewController ()

@end

@implementation ZCMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *str = [NSString getHtmlBodyStringWithUrl:[NSURL URLWithString:@"http://www.mzitu.com/56435"]];
    
    NSArray *arr = [str getFeedBackArrayWithSubstringByRegular:@"img[src~=(?i)\\.(png|jpe?g)]"];

    NSLog(@"%@", arr);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
