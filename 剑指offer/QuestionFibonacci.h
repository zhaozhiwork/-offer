//
//  QuestionFibonacci.h
//  剑指offer
//
//  Created by ananooo on 2020/1/8.
//  Copyright © 2020 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionFibonacci : NSObject

/**
 *题目：大家都知道斐波那契数列，现在要求输入一个整数n，请你输出斐波那契数列的第n项（从0开始，第0项为0
 *
 *解题思路：本题为斐波那契数列 ，输出第N项数据 斐波那契数列满足第N+1项数据=第N项数据+第N-1项数据
 **/
+(NSInteger)zz_FibonacciWithInputNumber:(NSInteger)inputNumber;


/**非递归方式**/
+(NSInteger)zz_FibonacciWithInputNumberNoRecursion:(NSInteger)inputNumber;
@end

NS_ASSUME_NONNULL_END
