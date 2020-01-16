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

/*
 *题目：28数组中有一个数字出现的次数超过数组长度的一半，请找出这个数字。例如输入一个长度为9的数组{1,2,3,2,2,2,5,4,2}。由于数字2在数组中出现了5次，超过数组长度的一半，因此输出2。如果不存在则输出0
 
 * 解题思路：
 思路1：我们通过一个字典让数组的值作为key，遍历数组，没遇到一次字典的value+1，判断字典的value值是否大于数据长度的一半
 思路2：我们将数组排序，直接取数组中间的值，然后看这个值在数组中的出现次数大不大于数组的一半，如果大于则返回该值，反之，返回0
 **/
+(NSInteger)zz_MoreThanHalfNum_Solution:(NSArray *)array;

/**
 *题目40：一个整型数组里除了两个数字之外，其他的数字都出现了两次。请写程序找出这两个只出现一次的数字。
 *
 *解题思路：遍历数组 使用字典存放 元素值作为key 出现的次数作为value 如果在遍历过程中，key存在则移除，遍历完成字典剩余的两个key就是我们想要的两个出现一次的数字
 *
 **/
+(void)zz_FindNumberAppearOnce:(NSArray<NSNumber *>*)array andOutNum1:(NSMutableArray *)num1 andOutNum2:(NSMutableArray *)num2;
@end

NS_ASSUME_NONNULL_END
