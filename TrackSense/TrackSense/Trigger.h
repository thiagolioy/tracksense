//
//  Trigger.h
//  TrackSense
//
//  Created by Thiago Lioy on 9/30/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TrackerProtocol.h"
@interface Trigger : NSObject<TrackerProtocol>
+ (Trigger *)sharedInstance ;
@end
