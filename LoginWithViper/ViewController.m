//
//  ViewController.m
//  LoginWithViper
//
//  Created by SRIN SAMSUNG on 2/18/16.
//  Copyright © 2016 SRIN SAMSUNG. All rights reserved.
//

#import "ViewController.h"
#import "Presenter.h"

@implementation ViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.loginViewDelegate = [Presenter sharedManager];
}

# pragma mark - IBAction

-(void)loginPressed:(id)sender {
    
    if ([self.loginViewDelegate respondsToSelector:@selector(loggingNowWithUserName:withPassword:)]) {
        [self.loginViewDelegate loggingNowWithUserName:self.userTextField withPassword:self.passTextField];
    }
}

@end
