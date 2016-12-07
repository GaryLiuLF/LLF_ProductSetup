//
//  LLFHelpClass.h
//  LLF_ProjectSetup
//
//  Created by Apple on 16/12/5.
//  Copyright © 2016年 LLF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"


@interface LLFHelpClass : NSObject


/**
 全局appDelegate

 @return appDelegate
 */
+ (AppDelegate *)appDelegate;

/*---------------手机设备---------------*/
/**
 获取设备硬件类型

 @return 设备硬件类型字符串
 */
+ (NSString *)devicePlatformsString;

/**
 获取设备英文全称

 @return 设备名称
 */
+ (NSString *)deviceString;


/*---------------UIView---------------*/
/**
 计算文本的宽或高

 @param content 内容
 @param maxSize 控件所需最大空间，一般高是最大值，如：CGSizeMake(width, MAXFLOAT)
 @param font 字体大小
 @return 文本的宽或高
 */
+ (CGFloat)calculateSizeWithContent:(NSString *)content
                            maxSize:(CGSize)maxSize
                               fint:(CGFloat)font;

/**
 计算自定义行距的文本的宽或高

 @param content 内容
 @param maxSize 控件所需最大空间
 @param font 字体大小
 @param spaceRH 行距占行高的比例，若无设置行距则值为0.05
 @return 文本的宽或高
 */
+ (CGFloat)calculateSizeWithContent:(NSString *)content
                            maxSize:(CGSize)maxSize
                               fint:(CGFloat)font
                            spaceRH:(CGFloat)spaceRH;

/*---------------字符串、数组、字典、对象之间的转换---------------*/
/**
 判断字符串是否为空

 @param string 字符串
 @return 布尔值
 */
- (BOOL)stringIsBlank:(NSString *)string;

/**
 json字符串转字典

 @param string json字符串
 @return 转换之后的字典
 */
- (NSDictionary *)stringJsonToDictionary:(NSString *)string;

/**
 字典转json字符串

 @param dictionary 字典
 @return json字符串
 */
- (NSString *)dictionaryToJsonString:(NSDictionary *)dictionary;

/**
 数组转json字符串

 @param array 数组
 @return json字符串
 */
- (NSString *)arrayToJsonString:(NSArray *)array;



@end
