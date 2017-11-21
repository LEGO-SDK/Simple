//
//  SimpleRequestable.h
//  LEGO-SDK-Simple
//
//  Created by Keep Jacky on 2017/11/15.
//  Copyright © 2017年 UED Center. All rights reserved.
//

#import <LEGO-SDK/LGOCore.h>
#import "SimpleRequest.h"
@interface SimpleRequestable : LGORequestable
@property (nonatomic, strong) SimpleRequest *request;
@end
