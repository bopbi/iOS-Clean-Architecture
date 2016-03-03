//
//  Interactor.m
//  LoginWithViper
//
//  Created by SRIN SAMSUNG on 2/19/16.
//  Copyright © 2016 SRIN SAMSUNG. All rights reserved.
//

#import "Interactor.h"

@implementation Interactor

#pragma mark - Lifecycle

+ (id)sharedManager {
    static Interactor *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}


@end
