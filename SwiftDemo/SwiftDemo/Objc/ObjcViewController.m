//
//  ObjcViewController.m
//  SwiftDemo
//
//  Created by Anselz on 14-6-18.
//  Copyright (c) 2014年 Anselz. All rights reserved.
//

#import "ObjcViewController.h"
#import "SwiftDemo-Swift.h"
#import "ObjcTableViewCell.h"

@interface ObjcViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ObjcViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Objc"];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.0f;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ObjcTableViewCell *cell = (ObjcTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"ObjcTableViewCell"];
    if (cell == nil) {
        cell = (ObjcTableViewCell *)[[[NSBundle mainBundle]loadNibNamed:@"ObjcTableViewCell" owner:nil options:nil] objectAtIndex:0];
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ViewController *viewController = [[ViewController alloc]init];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
