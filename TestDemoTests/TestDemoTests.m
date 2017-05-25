//
//  TestDemoTests.m
//  TestDemoTests
//
//  Created by weixuewu on 2017/4/14.
//  Copyright © 2017年 weixuewu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+String.h"

@interface TestDemoTests : XCTestCase

@end

@implementation TestDemoTests

//在所有测试用例test方法运行之前运行的函数，在这里进行一些通用的初始化工作
- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

//在所有测试用例test方法运行结束后才运行此方法
- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//测试用例
- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    NSString *phone = @"qq12345678901";
    BOOL flag = [phone isPhone];
//    XCTAssertTrue(flag,@"是手机号");
}

- (void)testIsPhone{
    NSString *phone = @"912345678900";
    BOOL flag = [phone isPhone];
    XCTAssertTrue(flag,@"是手机号");
}

//性能测试用例，主要是评估一段代码的运行时间
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
