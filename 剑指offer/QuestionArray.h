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
@end

NS_ASSUME_NONNULL_END
