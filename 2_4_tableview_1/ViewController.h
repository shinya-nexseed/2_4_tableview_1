//
//  ViewController.h
//  2_4_tableview_1
//
//  Created by Shinya Hirai on 2015/07/16.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate> // プロトコル

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

