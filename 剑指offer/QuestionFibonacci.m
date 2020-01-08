//
//  QuestionFibonacci.m
//  剑指offer
//
//  Created by ananooo on 2020/1/8.
//  Copyright © 2020 admin. All rights reserved.
//

#import "QuestionFibonacci.h"

@implementation QuestionFibonacci

+(NSInteger)zz_FibonacciWithInputNumber:(NSInteger)inputNumber{
    
    if (inputNumber<=1) {
        return inputNumber;
    }
   
    return [self zz_FibonacciWithInputNumber:inputNumber-1]+[self zz_FibonacciWithInputNumber:inputNumber-2];
}

+(NSInteger)zz_FibonacciWithInputNumberNoRecursion:(NSInteger)inputNumber{
    if (inputNumber<=1) {
        return inputNumber;
    }
    NSInteger pre = 0;
    NSInteger pre1 = 1;
    for (NSInteger i = 2 ; i<=inputNumber; i++) {
        NSInteger sum = pre1+pre;
        pre = pre1;
        pre1 = sum;
    }
    return pre1;
}

@end
