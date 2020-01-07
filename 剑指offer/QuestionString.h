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

+(NSString *)replaceSpaceString:(NSString *)targetString;

@end

NS_ASSUME_NONNULL_END
