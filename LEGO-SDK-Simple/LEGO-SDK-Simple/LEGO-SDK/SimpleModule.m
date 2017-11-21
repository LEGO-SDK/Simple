//
//  SimpleModule.m
//  LEGO-SDK-Simple
//
//  Created by Keep Jacky on 2017/11/15.
//  Copyright © 2017年 UED Center. All rights reserved.
//

#import "SimpleModule.h"
#import "SimpleRequestable.h"
#import "SimpleRequest.h"
@implementation SimpleModule
+ (void)load {
    [[LGOCore modules] addModuleWithName:@"UED.SimpleModule" instance:[SimpleModule new]];
}

- (LGORequestable *)buildWithDictionary:(NSDictionary *)dictionary context:(LGORequestContext *)context {
    
    SimpleRequest *request = [[SimpleRequest alloc] initWithContext:context];
    request.number1 = [dictionary[@"number1"] isKindOfClass:[NSString class]] ? [dictionary[@"number1"] integerValue] : 0;
    request.number2 = [dictionary[@"number2"] isKindOfClass:[NSString class]] ? [dictionary[@"number2"] integerValue] : 0;
    SimpleRequestable *requestable = [SimpleRequestable new];
    requestable.request = request;
    
    return requestable;
}
@end
