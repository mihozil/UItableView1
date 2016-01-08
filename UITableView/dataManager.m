//
//  dataManager.m
//  UITableView
//
//  Created by Apple on 1/8/16.
//  Copyright (c) 2016 AMOSC. All rights reserved.
//

#import "dataManager.h"

@implementation dataManager
+ (instancetype) getSingleton{
    dataManager *datamanager= [self new];
    NSString *filename = [[NSBundle mainBundle]pathForResource:@"List" ofType:@"plist"];
    NSMutableArray *raw = [[NSMutableArray alloc]initWithContentsOfFile:filename];
   NSMutableArray *temp = [[NSMutableArray alloc]initWithCapacity:raw.count];
    
    for (NSDictionary* item in raw){
        modelVC *newitem;
        newitem = [[modelVC alloc]initwithName:[item valueForKey:@"name"]
                                        andUse:[item valueForKey:@"use"]
                                      andPhoto:[item valueForKey:@"photoname"]];
        [temp addObject:newitem];
    }
    datamanager.data = [[NSMutableArray alloc]initWithArray:temp];
    return datamanager;
}

@end
