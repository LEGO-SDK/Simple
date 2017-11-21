//
//  SimpleResponse.m
//  LEGO-SDK-Simple
//
//  Created by Keep Jacky on 2017/11/15.
//  Copyright © 2017年 UED Center. All rights reserved.
//

#import "SimpleResponse.h"

@implementation SimpleResponse

- (NSDictionary *)resData {
    return @{@"result" : @(self.result) ?: @(-INT_MIN),
             @"summary" : self.summary ?: @""
             };
}

@end
