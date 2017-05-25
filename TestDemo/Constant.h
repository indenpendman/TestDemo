//
//  Constant.h
//  TestDemo
//
//  Created by weixuewu on 2017/4/21.
//  Copyright © 2017年 weixuewu. All rights reserved.
//



#define SYSTEM_VERSION ([[UIDevice currentDevice] systemVersion])
#define IOS9_OR_LATER ((SYSTEM_VERSION.floatValue >= 9.0) ? 1:0)


//适配字体，ios9及以上系统使用新字体——平方字体
#ifdef __IPHONE_9_0

#define kFontSize15 [UIFont fontWithName:@"PingFangSC-Light" size:15.0]

#else

#define kFontSize15 [UIFont systemFontOfSize:15.0]

#endif



#ifdef DEBUG
#define kPortURL  @"http://101.200.172.162:8089" //端口ip
#else
#define kPortURL  @"http://192.168.1.254:8080" //端口ip
#endif





#if TEST

#define kName @"ios10以前"

#else

#define kName @"ios10以后"

#endif



#if 1   

//code 1

#elif 2

//code 2

#else

//code n

#endif




#ifndef Constant_h
#define Constant_h


#endif /* Constant_h */
