//
//  Question1.h
//  剑指offer
//
//  Created by ananooo on 2020/1/7.
//  Copyright © 2020 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
*数组相关
**/


@interface QuestionArray : NSObject

/**
*题目：在一个二维数组中（每个一维数组的长度相同），每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。
 *
 * 解题思路：
 *我们可以知道每一行中列数最大值最大，如果列数最大值小于目标值则行数增加，如果l当前行的i列数最大值大于g目标值，只需要对列数进行减减操作
 **/
+(BOOL)zz_FindTargetWithNsArray:(NSArray *)array andWithTarget:(NSInteger)target;


/**
 *题目： 把一个数组最开始的若干个元素搬到数组的末尾，我们称之为数组的旋转。
 输入一个非递减排序的数组的一个旋转，输出旋转数组的最小元素。
 例如数组{3,4,5,1,2}为{1,2,3,4,5}的一个旋转，该数组的最小值为1。
 NOTE：给出的所有元素都大于0，若数组大小为0，请返回0。
 *
 * 解题思路：采用二分法b的变形；
 * 1.来判断 中间值array[mid]与array[high]值来比较，从而确定处于减区间还是增区间
 *2.如果两个值相等只能来z逐个比较
 **/

+(NSInteger)zz_FindMinNumberInRotateArray:(NSArray<NSNumber *>*)array;

/**
 * 题目:19 顺时针打印矩阵  输入一个矩阵，按照从外向里以顺时针的顺序依次打印出每一个数字，例如，如果输入如下4 X 4矩阵： 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 则依次打印出数字1,2,3,4,8,12,16,15,14,13,9,5,6,7,11,10.
 **/
+(NSArray *)zz_printMatrix:(NSArray <NSArray *>*)matrix;
@end

NS_ASSUME_NONNULL_END
