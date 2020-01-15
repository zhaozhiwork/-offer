//
//  QuestionDymiac.m
//  剑指offer
//
//  Created by ananooo on 2020/1/8.
//  Copyright © 2020 admin. All rights reserved.
//

#import "QuestionDymiac.h"

@implementation QuestionDymiac

+(NSInteger)zz_jumpFloor:(NSInteger)target{
    if (target<=0) {
        return 0;
    }
    return pow(2, target-1);
}


+(NSInteger)zz_NumberOF1:(NSInteger)target{
    NSInteger count = 0;
    NSInteger mask = 1;
    while (mask !=0) {
        if ((target&mask)!=0) {
            count++;
        }
       mask=  mask <<1;
    }
    return count;
}

+(NSInteger)zz_NumberOF1Complete:(NSInteger)target{
    NSInteger count = 0;
    while (target!=0) {
        count++;
        target = target&(target-1);
    }
    return count;
}


+(double)zz_Power:(double)base andWith:(int)exponent{
    if (base==0.0) {
        return 0.0;
    }
    if (exponent==0) {
        return 1.0;
    }
    if (exponent==1) {
        return base;
    }
    if (base == 1.0) {
        return base;
    }
    int ABS = exponent>0?exponent:-exponent;
    for (int i=1; i<ABS; i++) {
        base *=base;
    }
    return  exponent>0?base:1/base;
}


+(void)zz_reOrderArray:(NSMutableArray<NSNumber *>*)array{
    if (array.count <=1) {
        return;
    }
    NSInteger i =0;
    NSInteger j=0;
    while (j<array.count) {
        if ([array[i] integerValue]%2==0) {
            /**偶数**/
            if (j<i) {j=i+1;}
            if ([array[j] integerValue]%2==1) {
                NSInteger tmp = array[i].integerValue;
                [array replaceObjectAtIndex:i withObject:array[j]];
                NSInteger progress = j-i;
                while (progress>0) {
                    /**经过的偶数全部后移**/
                    [array replaceObjectAtIndex:i+progress withObject:array[i+progress-1]];
                    progress--;
                }
                /**第一偶数占位相对前面的位置来保持相对位置不变**/
                [array replaceObjectAtIndex:i+1 withObject:[NSNumber numberWithInteger:tmp]];
            }else{
                j++;
            }
        }else{
            i++;
        }
    }
}


+(NSInteger)zz_FindGreatestSumOfSubArray:(NSArray<NSNumber *>*)array{
    
    NSInteger maxResult = array.firstObject.integerValue;
    
    NSInteger totalResult = 0;
    for (NSInteger  i= 0; i<array.count; i++) {
        totalResult += array[i].integerValue;
        if (maxResult<totalResult) {
            maxResult = totalResult;
        }
    }
    
    return maxResult;
}
@end
