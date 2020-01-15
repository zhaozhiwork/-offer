//
//  QuestionSort.m
//  剑指offer
//
//  Created by ananooo on 2020/1/15.
//  Copyright © 2020 admin. All rights reserved.
//

#import "QuestionSort.h"

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

@end
