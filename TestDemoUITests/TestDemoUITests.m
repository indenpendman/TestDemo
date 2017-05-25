//
//  TestDemoUITests.m
//  TestDemoUITests
//
//  Created by weixuewu on 2017/4/14.
//  Copyright © 2017年 weixuewu. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TestDemoUITests : XCTestCase

@end

@implementation TestDemoUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {

    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *phoneTextField = app.textFields[@"phone"];
    [phoneTextField tap];
    [phoneTextField typeText:@"15312345678"];
    
    XCUIElement *passwordTextField = app.textFields[@"password"];
    [passwordTextField tap];
    [passwordTextField tap];
    [passwordTextField typeText:@"1234"];
    
    XCUIElement *loginButton = app.buttons[@"login"];
    [loginButton tap];
    [app.alerts[@"\u63d0\u793a"].buttons[@"\u597d\u7684"] tap];
    [passwordTextField typeText:@"123"];
    [loginButton tap];
    
}

@end
