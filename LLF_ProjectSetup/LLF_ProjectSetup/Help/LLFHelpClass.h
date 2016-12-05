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

/**
 计算文本的宽或高

 @param content 内容
 @param maxSize 控件所需最大空间，一般高是最大值，如：CGSizeMake(width, MAXFLOAT)
 @param font 字体大小
 @return 文本的宽或高
 */
+ (CGFloat)calculateSizeWithContent:(NSString *)content maxSize:(CGSize)maxSize fint:(CGFloat)font;

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


@end
