//
//  dataManager.h
//  UITableView
//
//  Created by Apple on 1/8/16.
//  Copyright (c) 2016 AMOSC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "modelVC.h"

@interface dataManager : NSObject
@property (nonatomic, strong) NSArray* data;
+(instancetype)getSingleton;

@end
