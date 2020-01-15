//
//  QuestionString.h
//  剑指offer
//
//  Created by ananooo on 2020/1/7.
//  Copyright © 2020 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 *字符串相关
 **/


@interface QuestionString : NSObject

/**
*题目：请实现一个函数，将一个字符串中的每个空格替换成“%20”。例如，当字符串为We Are *Happy.则经过替换之后的字符串为We%20Are%20Happy
*解题思路：
**/

+(NSString *)zz_replaceSpaceString:(NSString *)targetString;

/**
 * 题目32：输入一个正整数数组，把数组里所有数字拼接起来排成一个数，打印能拼接出的所有数字中最小的一个。例如输入数组{3，32，321}，则打印出这三个数字能排成的最小数字为321323。
 *
 * 解题思路：他们当做字符串处理 两两拼接然后比较大小，小的放在前面大的放后面
 ***/
+(NSString *)zz_PrintMinNumber:(NSArray<NSNumber *>*)numbers;
@end

NS_ASSUME_NONNULL_END
