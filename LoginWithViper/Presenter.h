//
//  Presenter.h
//  LoginWithViper
//
//  Created by SRIN SAMSUNG on 2/19/16.
//  Copyright © 2016 SRIN SAMSUNG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface Presenter : NSObject <LoginViewDelegate>

+ (id)sharedManager;

@end
