//
//  ViewController.m
//  2_4_tableview_1
//
//  Created by Shinya Hirai on 2015/07/16.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

#import "AppDelegate.h"

@interface ViewController () {
    // AppDelegateのグローバル化
    AppDelegate *_appDelegate; // 定義
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    
    // Nabbarのタイトル
    self.title = @"プログラミング言語";
    
    _appDelegate = [[UIApplication sharedApplication] delegate]; // 初期化
    // グローバルなので、影響範囲には気をつける
}

#pragma mark - Table View
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"行=%ld", (long)indexPath.row];
    
    return cell;
}

//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    DetailViewController *dVC = [segue destinationViewController];
//}

// Cellが選択された際に発動するメソッド
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Cell タップ = %ld", (long)indexPath.row);
    
    // DetailViewController *dVC = [[DetailViewController alloc] init];
    DetailViewController *dVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
    // self.myLabel.text = @"ほげ";
    dVC.indexPath = indexPath.row;
    dVC.str = @"hoge";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
