//
//  modelVC.h
//  UITableView
//
//  Created by Apple on 1/8/16.
//  Copyright (c) 2016 AMOSC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface modelVC : NSObject
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* use;
@property (strong, nonatomic) UIImage* photo;

-(instancetype) initwithName:(NSString*)name
                      andUse:(NSString*)use
                    andPhoto:(NSString*)photo;



@end
