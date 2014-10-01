//
//  EmptyTracker.m
//  TrackSense
//
//  Created by Thiago Lioy on 9/30/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

#import "EmptyTracker.h"

@implementation EmptyTracker


-(void)login:(NSString *)username{}
-(void)logout{}
-(void)sale:(NSString *)orderNumber{}
-(void)addToCart:(NSString *)productId{}
-(void)removeFromCart:(NSString *)productId{}

@end
