//
//  Timeline.m
//  LoginWithViper
//
//  Created by SRIN SAMSUNG on 2/19/16.
//  Copyright © 2016 SRIN SAMSUNG. All rights reserved.
//

#import "Timeline.h"

@implementation Timeline

- (id) init
{
    self = [super init];
    
    if (self){
        
    }
    
    return self;
}

- (NSString *)getName {
    return name;
}

- (void)setName:(NSString *)string{
    name = string;
}

- (NSString *)getContent {
    return content;
}

- (void)setContent:(NSString *)string {
    name = string;
}

@end