//
//  SimpleRequestable.m
//  LEGO-SDK-Simple
//
//  Created by Keep Jacky on 2017/11/15.
//  Copyright © 2017年 UED Center. All rights reserved.
//

#import "SimpleRequestable.h"
#import "SimpleResponse.h"
#import <AudioToolbox/AudioToolbox.h>
@implementation SimpleRequestable
- (void)requestAsynchronize:(LGORequestableAsynchronizeBlock)callbackBlock {
    SimpleResponse *response = [SimpleResponse new];
    response.result = self.request.number1 + self.request.number2;
    if (response.result % 3 == 0) {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        response.summary = @"You got a vibration!";
    } else {
        response.summary = @"nothing was happened.";
    }
    callbackBlock([response accept:nil]);
}
@end
