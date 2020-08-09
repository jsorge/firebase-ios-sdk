/*
 * Copyright 2018 The Firebase Apple SDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import <Foundation/Foundation.h>

#import "Interop/Analytics/Public/FIRAnalyticsInterop.h"

NS_ASSUME_NONNULL_BEGIN

/**
 * Provides integration between FIRMessaging and Analytics.
 *
 * All Analytics dependencies should be kept in this class, and missing dependencies should be
 * handled gracefully.
 *
 */
@interface FIRMessagingAnalytics : NSObject

/**
 * Determine whether a notification has the properties to be loggable to Analytics.
 * If so, send the notification.
 * @param notification The notification payload from APNs
 * @param analytics The class to be used as the receiver of the logging method
 */

+ (void)logMessage:(NSDictionary *)notification
       toAnalytics:(id<FIRAnalyticsInterop> _Nullable)analytics;

@end

NS_ASSUME_NONNULL_END
