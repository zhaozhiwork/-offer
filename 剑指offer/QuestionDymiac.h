//
//  QuestionDymiac.h
//  剑指offer
//
//  Created by ananooo on 2020/1/8.
//  Copyright © 2020 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/*
 *动态规划问题
 **/

@interface QuestionDymiac : NSObject


/**
 * 题目：一只青蛙一次可以跳上1级台阶，也可以跳上2级……它也可以跳上n级。求该青蛙跳上一个n级的台阶总共有多少种跳法
 *
 * 解题思路：每个台阶都可以跳也都可以不跳，除了最后一个台阶必须跳上，
 **/

+(NSInteger)zz_jumpFloor:(NSInteger)target;

/**
 *题目：输入一个整数，输出该数二进制表示中1的个数。其中负数用补码表示。
 *
 **解题思路：我们只需要逐个检查位上面的值是否为1，我们可以巧妙的采取位运算，让一个mask值逐个进行mask<<1,左移，然后与g目标值进行位运算（与运算）得出的结果如果不等于0则，则1的个数+1
 ***/

+(NSInteger)zz_NumberOF1:(NSInteger)target;

/**查找1的改进**/
+(NSInteger)zz_NumberOF1Complete:(NSInteger)target;
@end

NS_ASSUME_NONNULL_END
