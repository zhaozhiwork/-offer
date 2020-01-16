//
//  QuestionSort.h
//  剑指offer
//
//  Created by ananooo on 2020/1/15.
//  Copyright © 2020 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


/**
 *排序相关
 */

@interface QuestionSort : NSObject

/**题目29：输入n个整数，找出其中最小的K个数。例如输入4,5,1,6,2,7,3,8这8个数字，则最小的4个数字是1,2,3,4,
 *
 *
 *解题思路：利用快速排序 将数组排序，将前K个数组取出 即可
 */

+(NSArray <NSNumber *>*)zz_GetLeastNumbers_Solution:(NSMutableArray *)inputArray andWithLeastK:(NSInteger)k;


/**
 *题目：35
 *在数组中的两个数字，如果前面一个数字大于后面的数字，则这两个数字组成一个逆序对。输入一个数组,求出这个数组中的逆序对的总数P。并将P对1000000007取模的结果输出。 即输出P%1000000007
 输入描述:
 题目保证输入的数组中没有的相同的数字
 数据范围：
     对于%50的数据,size<=10^4
     对于%75的数据,size<=10^5
     对于%100的数据,size<=2*10^5
 示例1
 输入
 1,2,3,4,5,6,7,0
 输出
 7
 *
 *
 * 解题思路：典型的归并排序的应用， 我们在拆分数组合并时候，比较大小时候做逆序对的统计
 **/

+(NSInteger)zz_InversePairs:(NSArray *)array;
@end

NS_ASSUME_NONNULL_END
