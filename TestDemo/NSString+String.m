//
//  NSString+String.m
//  TestDemo
//
//  Created by weixuewu on 2017/5/24.
//  Copyright © 2017年 weixuewu. All rights reserved.
//

#import "NSString+String.h"

@implementation NSString (String)

-(BOOL)isPhone{
    if (self.length != 11) {
        return NO;
    }
    
    NSString *shuzi = @"^([1][0-9]{10})";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"self matches %@",shuzi];
    BOOL flag = [pred evaluateWithObject:self];
    return flag;
}

@end
