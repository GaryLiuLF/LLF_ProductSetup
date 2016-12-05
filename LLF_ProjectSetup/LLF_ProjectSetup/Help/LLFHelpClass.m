//
//  LLFHelpClass.m
//  LLF_ProjectSetup
//
//  Created by Apple on 16/12/5.
//  Copyright © 2016年 LLF. All rights reserved.
//

#import "LLFHelpClass.h"
#import "SynthesizeSingleton.h"
#include <sys/sysctl.h>
#import  <sys/utsname.h>

#define GetLabelNormalLength(length,font,spaceH) (length + (length - [UIFont systemFontOfSize:font].pointSize)*(spaceH > 0 ? spaceH : 0.05))

@implementation LLFHelpClass

SYNTHESIZE_SINGLETON_FOR_CLASS(LLFHelpClass)

#pragma mark - 但第一次使用这个单例子时，会调用这个init方法
- (instancetype)init
{
    if (self = [super init]) {
        // 声明单例时，需要共同部分
    }
    return self;
}

+ (AppDelegate *)appDelegate
{
    return (AppDelegate *)[[UIApplication sharedApplication] delegate];
}

+ (NSString *)devicePlatformsString
{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    return platform;
}

+ (NSString *)deviceString
{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    if ([platform isEqualToString:@"iPhone1,1"]) return @"iPhone 2G (A1203)";
    if ([platform isEqualToString:@"iPhone1,2"]) return @"iPhone 3G (A1241/A1324)";
    if ([platform isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS (A1303/A1325)";
    if ([platform isEqualToString:@"iPhone3,1"]) return @"iPhone 4 (A1332)";
    if ([platform isEqualToString:@"iPhone3,2"]) return @"iPhone 4 (A1332)";
    if ([platform isEqualToString:@"iPhone3,3"]) return @"iPhone 4 (A1349)";
    if ([platform isEqualToString:@"iPhone4,1"]) return @"iPhone 4S";
    if ([platform isEqualToString:@"iPhone5,1"]) return @"iPhone 5 (A1428)";
    if ([platform isEqualToString:@"iPhone5,2"]) return @"iPhone 5 (A1429/A1442)";
    if ([platform isEqualToString:@"iPhone5,3"]) return @"iPhone 5c (A1456/A1532)";
    if ([platform isEqualToString:@"iPhone5,4"]) return @"iPhone 5c (A1507/A1516/A1526/A1529)";
    if ([platform isEqualToString:@"iPhone6,1"]) return @"iPhone 5s (A1453/A1533)";
    if ([platform isEqualToString:@"iPhone6,2"]) return @"iPhone 5s (A1457/A1518/A1528/A1530)";
    if ([platform isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus (A1522/A1524)";
    if ([platform isEqualToString:@"iPhone7,2"]) return @"iPhone 6 (A1549/A1586)";
    if ([platform isEqualToString:@"iPhone8,1"]) return @"iPhone 6s (A1700/1688)";
    if ([platform isEqualToString:@"iPhone8,2"]) return @"iPhone 6s Plus (A1699/A1687)";
    
    if ([platform isEqualToString:@"iPod1,1"])   return @"iPod Touch 1G (A1213)";
    if ([platform isEqualToString:@"iPod2,1"])   return @"iPod Touch 2G (A1288)";
    if ([platform isEqualToString:@"iPod3,1"])   return @"iPod Touch 3G (A1318)";
    if ([platform isEqualToString:@"iPod4,1"])   return @"iPod Touch 4G (A1367)";
    if ([platform isEqualToString:@"iPod5,1"])   return @"iPod Touch 5G (A1421/A1509)";
    if ([platform isEqualToString:@"iPod6,1"])   return @"iPod Touch 5G (A1441/A1509)";
    if ([platform isEqualToString:@"iPod7,1"])   return @"iPod Touch 6G (A1521/A1509)";
    
    if ([platform isEqualToString:@"iPad1,1"])   return @"iPad 1G (A1219/A1337)";
    
    if ([platform isEqualToString:@"iPad2,1"])   return @"iPad 2 (A1395)";
    if ([platform isEqualToString:@"iPad2,2"])   return @"iPad 2 (A1396)";
    if ([platform isEqualToString:@"iPad2,3"])   return @"iPad 2 (A1397)";
    if ([platform isEqualToString:@"iPad2,4"])   return @"iPad 2 (A1395+New Chip)";
    if ([platform isEqualToString:@"iPad2,5"])   return @"iPad Mini 1G (A1432)";
    if ([platform isEqualToString:@"iPad2,6"])   return @"iPad Mini 1G (A1454)";
    if ([platform isEqualToString:@"iPad2,7"])   return @"iPad Mini 1G (A1455)";
    
    if ([platform isEqualToString:@"iPad3,1"])   return @"iPad 3 (A1416)";
    if ([platform isEqualToString:@"iPad3,2"])   return @"iPad 3 (A1403)";
    if ([platform isEqualToString:@"iPad3,3"])   return @"iPad 3 (A1430)";
    if ([platform isEqualToString:@"iPad3,4"])   return @"iPad 4 (A1458)";
    if ([platform isEqualToString:@"iPad3,5"])   return @"iPad 4 (A1459)";
    if ([platform isEqualToString:@"iPad3,6"])   return @"iPad 4 (A1460)";
    
    if ([platform isEqualToString:@"iPad4,1"])   return @"iPad Air (A1474)";
    if ([platform isEqualToString:@"iPad4,2"])   return @"iPad Air (A1475)";
    if ([platform isEqualToString:@"iPad4,3"])   return @"iPad Air (A1476)";
    if ([platform isEqualToString:@"iPad4,4"])   return @"iPad Mini 2G (A1489)";
    if ([platform isEqualToString:@"iPad4,5"])   return @"iPad Mini 2G (A1490)";
    if ([platform isEqualToString:@"iPad4,6"])   return @"iPad Mini 2G (A1491)";
    if ([platform isEqualToString:@"iPad5,3"])   return @"iPad Air2 (A1566)";
    
    if ([platform isEqualToString:@"i386"])      return @"iPhone Simulator";
    if ([platform isEqualToString:@"x86_64"])    return @"iPhone Simulator";
    return platform;
}

+ (CGFloat)calculateSizeWithContent:(NSString *)content maxSize:(CGSize)maxSize fint:(CGFloat)font
{
    NSDictionary *attriDic = @{NSFontAttributeName : [UIFont systemFontOfSize:font]};
    CGSize size = [content boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attriDic context:nil].size;
    if (maxSize.width == MAXFLOAT) {
        return size.width;
    }
    return size.height;
}

+ (CGFloat)calculateSizeWithContent:(NSString *)content maxSize:(CGSize)maxSize fint:(CGFloat)font spaceRH:(CGFloat)spaceRH
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    NSDictionary *attriDic = @{NSFontAttributeName : [UIFont systemFontOfSize:font]};
    CGSize size = [content boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attriDic context:nil].size;
    if (maxSize.width == MAXFLOAT) {
        return GetLabelNormalLength(size.width, font, spaceRH);
    }
    return  GetLabelNormalLength(size.height, font, spaceRH);
}

@end
