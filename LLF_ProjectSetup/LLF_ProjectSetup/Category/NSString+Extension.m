//
//  NSString+Extension.m
//  LLF_ProjectSetup
//
//  Created by Apple on 16/12/7.
//  Copyright © 2016年 LLF. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)


- (BOOL)isBlank
{
    // 初始化
    BOOL flag = NO;
    
    if (!self.length ||
        self == nil ||
        self == NULL ||
        (NSNull *)self == [NSNull null] ||
        [self isKindOfClass:[NSNull class]] ||
        [self isEqualToString:@"(null)"] ||
        [self isEqualToString:@"<null>"] ||
        [self isEqualToString:@"null"] ||
        [self isEqualToString:@"NULL"]) {
        flag = YES;
    }
    
    return flag;
}

- (NSDictionary *)stringJsonToDictionary
{
    if ([self isBlank]) {
        return nil;
    }
    
    NSError *error;
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *jsonDic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
    
    if (error) {
        NSLog(@"json解析失败：%@",error);
        return nil;
    }
    
    return jsonDic;
}


@end
