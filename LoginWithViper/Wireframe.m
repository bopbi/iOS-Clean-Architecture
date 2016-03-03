//
//  Wireframe.m
//  LoginWithViper
//
//  Created by SRIN SAMSUNG on 2/19/16.
//  Copyright © 2016 SRIN SAMSUNG. All rights reserved.
//

#import "Wireframe.h"
#import "HomeViewController.h"

@implementation Wireframe

#pragma mark - Lifecycle

+ (id)sharedManager {
    static Wireframe *sharedMyManager = nil;
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

#pragma mark - public methods

- (void)showErrorWithAlertController:(UIAlertController *)alertController {
    AppDelegate *appdelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appdelegate.window.rootViewController presentViewController:alertController animated:YES completion:nil];
}

- (void) goToHomeScreen {
    AppDelegate *appdelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    HomeViewController *homeVC = [storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
    [((UINavigationController * ) appdelegate.window.rootViewController) pushViewController:homeVC animated:YES];
}

@end
