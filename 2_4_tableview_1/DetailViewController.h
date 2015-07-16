//
//  DetailViewController.h
//  2_4_tableview_1
//
//  Created by Shinya Hirai on 2015/07/16.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController {
    int index;
    NSInteger indexPath;
    NSString *str;
}

@property (nonatomic,assign) int index;
@property (nonatomic,assign) NSInteger indexPath;
@property (nonatomic,strong) NSString *str;

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end
