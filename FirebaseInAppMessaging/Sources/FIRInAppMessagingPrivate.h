/*
 * Copyright 2019 The Firebase Apple SDK Authors
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

#import "FIRCore+InAppMessaging.h"
#import "FIRInAppMessaging.h"
#import "FirebaseCore/Sources/Private/FirebaseCoreInternal.h"

@class FIRInstallations;

@protocol FIRInAppMessagingInstanceProvider;
@protocol FIRLibrary;
@protocol FIRAnalyticsInterop;

NS_ASSUME_NONNULL_BEGIN
@interface FIRInAppMessaging () <FIRInAppMessagingInstanceProvider, FIRLibrary>
@property(nonatomic, readwrite, strong) id<FIRAnalyticsInterop> _Nullable analytics;
@property(nonatomic, readwrite, strong) FIRInstallations* _Nullable installations;
@end
NS_ASSUME_NONNULL_END
