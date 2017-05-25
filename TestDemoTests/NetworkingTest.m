//
//  NetworkingTest.m
//  TestDemo
//
//  Created by weixuewu on 2017/5/24.
//  Copyright © 2017年 weixuewu. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AFNetworking/AFNetworking.h"


@interface NetworkingTest : XCTestCase

@property (nonatomic, strong) AFHTTPSessionManager *AFHTTPManager;

@end

@implementation NetworkingTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    _AFHTTPManager = [AFHTTPSessionManager manager];
    _AFHTTPManager.requestSerializer.timeoutInterval = 50;
    _AFHTTPManager.securityPolicy.allowInvalidCertificates = YES;
    _AFHTTPManager.requestSerializer = [AFJSONRequestSerializer serializer];
    [_AFHTTPManager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    _AFHTTPManager.responseSerializer.acceptableContentTypes=[NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
}

- (void)testRequest{
    
    
    [self.AFHTTPManager GET:@"http://www.weather.com.cn/data/sk/101010100.html" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"返回数据:%@",responseObject);
        [[NSNotificationCenter defaultCenter]postNotificationName:@"Test" object:nil];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"hehehe");
        XCTAssertFalse(0,@"服务器连接失败");
        [[NSNotificationCenter defaultCenter]postNotificationName:@"Test" object:nil];
    }];
    
    //该方法监听一个通知,如果在规定时间内正确收到通知则测试通过。
    [self expectationForNotification:@"Test" object:nil handler:nil];
    //waitForExpectationsWithTimeout是等待时间，超过时间而没等到expectationForNotification方法收到“Test”通知就报错。
    [self waitForExpectationsWithTimeout:3 handler:nil];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}
@end
