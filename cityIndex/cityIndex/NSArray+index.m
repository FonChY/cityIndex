//
//  NSArray+index.m
//  地区索引
//
//  Created by FonChY on 16/6/27.
//  Copyright © 2016年 ChinaPan. All rights reserved.
//

#import "NSArray+index.h"

@implementation NSArray (index)
//提取首字母
+ (NSString *)firstCharactor:(NSString *)aString
{
    //转成了可变字符串
    NSMutableString *str = [NSMutableString stringWithString:aString];
    //先转换为带声调的拼音
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformMandarinLatin,NO);
    //再转换为不带声调的拼音
    CFStringTransform((CFMutableStringRef)str,NULL, kCFStringTransformStripDiacritics,NO);
    //转化为大写拼音
    NSString *pinYin = [str capitalizedString];
    //获取并返回首字母
    return [pinYin substringToIndex:1];
}
+ (NSArray *)suoyin:(NSArray *)dataArr{
    //获取首字母数组
    NSMutableArray *indexStr = [NSMutableArray array];
    for (int i = 0; i < dataArr.count; ++i) {
        NSString *str = [self firstCharactor:dataArr[i]];
        
        [indexStr addObject:str];
    }
    
    
    NSMutableArray *A = [NSMutableArray array];
    NSMutableArray *B = [NSMutableArray array];
    NSMutableArray *C = [NSMutableArray array];
    NSMutableArray *D = [NSMutableArray array];
    NSMutableArray *E = [NSMutableArray array];
    NSMutableArray *F = [NSMutableArray array];
    NSMutableArray *G = [NSMutableArray array];
    NSMutableArray *H = [NSMutableArray array];
    
    NSMutableArray *J = [NSMutableArray array];
    NSMutableArray *K = [NSMutableArray array];
    NSMutableArray *L = [NSMutableArray array];
    NSMutableArray *M = [NSMutableArray array];
    NSMutableArray *N = [NSMutableArray array];
    
    NSMutableArray *P = [NSMutableArray array];
    NSMutableArray *Q = [NSMutableArray array];
    NSMutableArray *R = [NSMutableArray array];
    NSMutableArray *S = [NSMutableArray array];
    NSMutableArray *T = [NSMutableArray array];
    
    NSMutableArray *W = [NSMutableArray array];
    NSMutableArray *X = [NSMutableArray array];
    NSMutableArray *Y = [NSMutableArray array];
    NSMutableArray *Z = [NSMutableArray array];
    NSMutableArray *other = [NSMutableArray array];
    //获取各个组的数组
    for (int i = 0; i < indexStr.count; ++i) {
        if ([indexStr[i] isEqualToString:@"I"]&&[indexStr[i] isEqualToString:@"O"]&&[indexStr[i] isEqualToString:@"U"]&&[indexStr[i] isEqualToString:@"V"]) {
            [other addObject:dataArr[i]];
        }else{
            
            if ([indexStr[i] isEqualToString:@"A"]) {
                [A addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"B"]) {
                [B addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"C"]) {
                [C addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"D"]) {
                [D addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"E"]) {
                [E addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"F"]) {
                [F addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"G"]) {
                [G addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"H"]) {
                [H addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"J"]) {
                [J addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"K"]) {
                [K addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"L"]) {
                [L addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"M"]) {
                [M addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"N"]) {
                [N addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"P"]) {
                [P addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"Q"]) {
                [Q addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"R"]) {
                [R addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"S"]) {
                [S addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"T"]) {
                [T addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"W"]) {
                [W addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"X"]) {
                [X addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"Y"]) {
                [Y addObject:dataArr[i]];
            }
            if ([indexStr[i] isEqualToString:@"Z"]) {
                [Z addObject:dataArr[i]];
            }
            
        }
    }
    //    FYLog(@"%@", indexStr);
    
    
    NSArray *data = @[@{@"indexTitle": @"A",@"data":A},@{@"indexTitle": @"B",@"data":B},@{@"indexTitle": @"C",@"data":C},@{@"indexTitle": @"D",@"data":D},@{@"indexTitle": @"E",@"data":E},@{@"indexTitle": @"F",@"data":F},@{@"indexTitle": @"G",@"data":G},@{@"indexTitle": @"H",@"data":H},@{@"indexTitle": @"J",@"data":J},@{@"indexTitle": @"K",@"data":K},@{@"indexTitle": @"L",@"data":L},@{@"indexTitle": @"M",@"data":M},@{@"indexTitle": @"N",@"data":N},@{@"indexTitle": @"P",@"data":P},@{@"indexTitle": @"Q",@"data":Q},@{@"indexTitle": @"R",@"data":R},@{@"indexTitle": @"S",@"data":S},@{@"indexTitle": @"T",@"data":T},@{@"indexTitle": @"W",@"data":W},@{@"indexTitle": @"X",@"data":X},@{@"indexTitle": @"Y",@"data":Y},@{@"indexTitle": @"Z",@"data":Z},@{@"indexTitle": @"#",@"data":other}];
    
    
    return data;
}
@end
