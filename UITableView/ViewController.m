//
//  ViewController.m
//  UITableView
//
//  Created by Apple on 1/8/16.
//  Copyright (c) 2016 AMOSC. All rights reserved.
//

#import "ViewController.h"
#import "modelVC.h"
#import "dataManager.h"

@interface ViewController ()

@end

@implementation ViewController{
    dataManager *datamanager;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    datamanager = [dataManager getSingleton];
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    // what we have in each cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath ];
    modelVC *item = [modelVC new];
    item = datamanager.data[indexPath.row];
    cell.textLabel.text = item.name;
    cell.detailTextLabel.text = item.use;
    cell.imageView.image = item.photo;
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return datamanager.data.count;
}


@end
