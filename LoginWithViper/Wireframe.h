//
//  Wireframe.h
//  LoginWithViper
//
//  Created by SRIN SAMSUNG on 2/19/16.
//  Copyright © 2016 SRIN SAMSUNG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"

@interface Wireframe : NSObject

+ (id)sharedManager;

-(void)showErrorWithAlertController:(UIAlertController *)alertController;
- (void) goToHomeScreen;
@end
