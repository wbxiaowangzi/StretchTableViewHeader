//
//  ViewController.m
//  拉伸的Header
//
//  Created by wbxiaowangzi on 16/1/18.
//  Copyright © 2016年 上海燃耀. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *header;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *headerH;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.contentInset = UIEdgeInsetsMake(100, 0, 0, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"scro.h%f",scrollView.contentOffset.y);
    CGFloat h = 200-(100+scrollView.contentOffset.y);
    if (h<100) {
        h=100;
    }
    self.headerH.constant =h;



}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"123"];
    cell.textLabel.text = @"cell";
    return cell;


}
@end
