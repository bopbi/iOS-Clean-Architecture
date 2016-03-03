//
//  LoginWithViperTests.m
//  LoginWithViperTests
//
//  Created by SRIN SAMSUNG on 2/18/16.
//  Copyright © 2016 SRIN SAMSUNG. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Presenter.h"

@interface Presenter (Test)

- (BOOL)isLoginValidWithUserName:(NSString *) userName withPass:(NSString *) password;
        
@end

@interface LoginWithViperTests : XCTestCase

@property (nonatomic) Presenter *presenterModule;

@end

@implementation LoginWithViperTests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.presenterModule = [[Presenter alloc] init];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIsLoginInfoValid {
    
    NSString *userName = @"Bobby";
    NSString *password = @"1234";
    BOOL expectedResult = YES;
    
    BOOL result = [self.presenterModule isLoginValidWithUserName:userName withPass:password];
    
    XCTAssertEqual(expectedResult, result, @"Something wrong when checking user (length > 0) and password (length > 0) info logic");
    
    userName = @"";
    password = @"";
    
    result = [self.presenterModule isLoginValidWithUserName:userName withPass:password];
    
    XCTAssertEqual(expectedResult, result, @"Something wrong when checking user (length == 0) and password (length == 0) info logic");
}

@end
