//
//  ViewController.h
//  LoginWithViper
//
//  Created by SRIN SAMSUNG on 2/18/16.
//  Copyright © 2016 SRIN SAMSUNG. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginViewDelegate <NSObject>
@required
- (void)loggingNowWithUserName:(UITextField *)userTextField withPassword:(UITextField *)passTextField;
@end

@interface ViewController : UIViewController

@property (assign, nonatomic) id <LoginViewDelegate> loginViewDelegate;

@property (strong, nonatomic) IBOutlet UITextField *userTextField;
@property (strong, nonatomic) IBOutlet UITextField *passTextField;

-(IBAction)loginPressed:(id)sender;

@end

