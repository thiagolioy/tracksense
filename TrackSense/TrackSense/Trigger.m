//
//  Trigger.m
//  TrackSense
//
//  Created by Thiago Lioy on 9/30/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

#import "Trigger.h"
#import "AdjustTracker.h"
#import "GTMTracker.h"
#import "Ad4PushTracker.h"
#import "ADXTracker.h"


@interface Trigger(){
    NSArray *trackers;
}
@end
@implementation Trigger

+ (Trigger *)sharedInstance {
    static Trigger *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [Trigger new];
        [_sharedInstance setupTrackers];
    });
    
    return _sharedInstance;
}

-(void)setupTrackers{

    trackers = @[
                  [ADXTracker new],
                  [AdjustTracker new],
                  [Ad4PushTracker new],
                  [GTMTracker new],
                 ];
}

-(void)login:(NSString *)username{
    for(id<TrackerProtocol> t in trackers)
        [t login:username];
}
-(void)logout{
    for(id<TrackerProtocol> t in trackers)
        [t logout];
}
-(void)sale:(NSString *)orderNumber{
    for(id<TrackerProtocol> t in trackers)
        [t sale:orderNumber];
}
-(void)removeFromCart:(NSString *)productId{
    for(id<TrackerProtocol> t in trackers)
        [t removeFromCart:productId];
}
-(void)addToCart:(NSString *)productId{
    for(id<TrackerProtocol> t in trackers)
        [t addToCart:productId];
}
@end
