//
//  Presenter.m
//  LoginWithViper
//
//  Created by SRIN SAMSUNG on 2/19/16.
//  Copyright © 2016 SRIN SAMSUNG. All rights reserved.
//

#import "Presenter.h"
#import "Wireframe.h"

@implementation Presenter

#pragma mark - Lifecycle

+ (id)sharedManager {
    static Presenter *sharedMyManager = nil;
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

#pragma mark - LoginViewDelegate

- (void)loggingNowWithUserName:(UITextField *)userTextField withPassword:(UITextField *)passTextField {
    [self isLoginValidWithUserName:userTextField.text withPass:passTextField.text];
}

#pragma mark - Private methods

- (BOOL)isLoginValidWithUserName:(NSString *) userName withPass:(NSString *) password {
    if (userName.length > 0 && password.length > 0) {
        // Proceed to login, go to interactor to check with database (entity)
        
        [[Wireframe sharedManager] goToHomeScreen];
        return YES;
    } else {
        // Show error --> wireframe
        
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Log in Error"
                                                                                 message:@"Please check your user name and password again"
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)
                                   {
                                       [alertController dismissViewControllerAnimated:YES completion:nil];
                                   }];
        
        [alertController addAction:okAction];
        
        [[Wireframe sharedManager] respondsToSelector:@selector(showErrorWithAlertController:)];
        [[Wireframe sharedManager] showErrorWithAlertController:alertController];
        
        return YES;
    }
    
    return NO;
}




@end
