//
//  DetailViewController.m
//  2_4_tableview_1
//
//  Created by Shinya Hirai on 2015/07/16.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize index;
@synthesize indexPath;
@synthesize str;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.myLabel.text = @"ほげ";
    NSLog(@"%ld",(long)indexPath);
    NSLog(@"%@", str);
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
