//
//  modelVC.m
//  UITableView
//
//  Created by Apple on 1/8/16.
//  Copyright (c) 2016 AMOSC. All rights reserved.
//

#import "modelVC.h"

@implementation modelVC
- (instancetype)initwithName:(NSString *)name andUse:(NSString *)use andPhoto:(NSString *)photo{
    if (self == [super init]){
        self.name = name;
        self.use = use;
        self.photo = [UIImage imageNamed:photo];

    }
            return self;
    
}


@end

