//
//  TrackerProtocol.h
//  TrackSense
//
//  Created by Thiago Lioy on 9/30/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TrackerProtocol <NSObject>
@required
-(void)login:(NSString*)username;
-(void)logout;
-(void)sale:(NSString*)orderNumber;
-(void)addToCart:(NSString*)productId;
-(void)removeFromCart:(NSString*)productId;
@end
