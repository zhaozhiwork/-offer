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

/**
 *题目34：在一个字符串(0<=字符串长度<=10000，全部由字母组成)中找到第一个只出现一次的字符,并返回它的位置, 如果没有则返回 -1（需要区分大小写）.
 *
 *解题思路：我们使用一个字典：该字符作为Key，出现的次数作为value然后遍历字典
 **/
+(NSInteger)zz_FristNotRepeatingChar:(NSString *)str;
@end

NS_ASSUME_NONNULL_END
