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


@end
