//
//  QuestionSort.m
//  剑指offer
//
//  Created by ananooo on 2020/1/15.
//  Copyright © 2020 admin. All rights reserved.
//

#import "QuestionSort.h"


 static  NSInteger question35Count;

@implementation QuestionSort


+(NSArray <NSNumber *>*)zz_GetLeastNumbers_Solution:(NSMutableArray *)inputArray andWithLeastK:(NSInteger)k{
    
    NSMutableArray <NSNumber *>*result = [NSMutableArray array];
    
    [self zz_QuickSort:inputArray andStart:0 andEnd:inputArray.count-1];
    
    for (NSInteger i = 0; i<k; i++) {
        [result addObject:inputArray[i]];
    }
    return result;
}

+(void)zz_QuickSort:(NSMutableArray *)array andStart:(NSInteger)start  andEnd:(NSInteger)end{
    
    if (start<end) {
        NSInteger pivot = [self zz_Partition:array andStart:start andEnd:end];
        [self zz_QuickSort:array andStart:start andEnd:pivot-1];
        [self zz_QuickSort:array andStart:pivot+1 andEnd:end];
    }
}

+(NSInteger)zz_Partition:(NSMutableArray *)array andStart:(NSInteger)start andEnd:(NSInteger)end{
    
    NSInteger pivot = [array[start] integerValue];
    
    while (start<end) {
        
        while  (start<end && [array[end] integerValue]>=pivot) {
            end--;
        }
        /**小于轴值的交换到前面去**/
        NSNumber *tmpNumber = array[end];
        [array replaceObjectAtIndex:end withObject:array[start]];
        [array replaceObjectAtIndex:start withObject:tmpNumber];

        
        while (start<end && [array[start] integerValue]<=pivot) {
            start++;
        }
        
               /**大于轴值的交换到后面去**/
        NSNumber *tmpNumber1 = array[end];
        [array replaceObjectAtIndex:end withObject:array[start]];
        [array replaceObjectAtIndex:start withObject:tmpNumber1];
        
    }
    
    return start;
}


+(NSInteger)zz_InversePairs:(NSArray *)array{
    question35Count = 0;
    
    NSMutableArray *mutableCopyArray = [NSMutableArray arrayWithArray:array];
    
    [self zz_DivideSort:mutableCopyArray andWithStart:0 andWithEnd:mutableCopyArray.count-1];
    
    return question35Count;
}

+(void)zz_DivideSort:(NSMutableArray *)array andWithStart:(NSInteger)start  andWithEnd:(NSInteger)end{
    
    if (start>=end) {
        return;
    }
    
    NSInteger mid = start+(end-start)/2;
    
    [self zz_DivideSort:array andWithStart:start andWithEnd:mid];
    
    [self zz_DivideSort:array andWithStart:mid+1 andWithEnd:end];
    
    /**合并**/
    [self zz_MergeWithArray:array andWithStart:start andMid:mid andEnd:end];
}

+(void)zz_MergeWithArray:(NSMutableArray *)array andWithStart:(NSInteger)start andMid:(NSInteger)mid andEnd:(NSInteger)end{
    
    /**临时的一个数组用来存放两个数组比较的结果排序**/
    NSMutableArray *tmpArray = [NSMutableArray array];
    
    NSInteger i = start; NSInteger j = mid+1;
    
   /**合并**/
    while (i<=mid && j<=end) {
        if ([array[i] integerValue]<= [array[j] integerValue]) {
            [tmpArray  addObject:array[i]];
            i++;
        }else{
            [tmpArray addObject:array[j]];
            j++;
            /**一旦左边数组中元素大于右边的元素则左边剩余所有的元素均大于它**/
            question35Count  += (mid+1-i );
        }
    }
    
    while (i<=mid) {
        [tmpArray addObject:array[i]];
        i++;
    }
    
    while (j<=end) {
        [tmpArray addObject:array[j]];
        j++;
    }
    
    /**把两个排序合并的数组替换原数组中的原来位置的下标**/
    for (NSInteger q = 0; q<tmpArray.count; q++) {
        [array replaceObjectAtIndex:start+q withObject:tmpArray[q]];
    }
    
}
@end
