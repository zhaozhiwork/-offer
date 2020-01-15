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

@end

NS_ASSUME_NONNULL_END
