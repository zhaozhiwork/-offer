//
//  main.m
//  剑指offer
//
//  Created by ananooo on 2020/1/7.
//  Copyright © 2020 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionArray.h"
#import "QuestionString.h"
#import "QuestionListNode.h"
#import "QuestionTreeNode.h"
#import "QuestionFibonacci.h"
#import "QuestionDymiac.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {



    }
    return 0;
}

void testReOrderArray(){
    NSArray *tmp1 = @[@(5),@(4),@(6),@(8),@(9),@(2),@(19),@(20),@(21)];
    NSMutableArray *tmp = [NSMutableArray arrayWithArray:tmp1];
    [QuestionDymiac zz_reOrderArray:tmp];
}

void testPower(){
     double result = [QuestionDymiac zz_Power:10.0 andWith:-2];
}

void testNumberOF1(){
    NSInteger result = [QuestionDymiac zz_NumberOF1Complete:10];
}

void testJumoFloor(){
   /**变态跳台阶问题**/
    NSInteger result = [QuestionDymiac zz_jumpFloor:3];
}

void testFibonacci(){
       NSInteger result =  [QuestionFibonacci zz_FibonacciWithInputNumber:10];
    
       NSInteger result2 =  [QuestionFibonacci zz_FibonacciWithInputNumberNoRecursion:10];
}

void testQuestion4(){
    NSArray *preArray = @[@1,@2,@4,@7,@3,@5,@6,@8];
    NSArray *inArray = @[@4,@7,@2,@1,@5,@3,@8,@6];
    TreeNode *tmp = [QuestionTreeNode zz_reLayoutBinaryTree:preArray andWithInResult:inArray];
}

void testMinNumberInArray(){
    NSArray *array = @[@3,@4,@5,@1,@2];
    NSInteger result  =  [QuestionArray zz_FindMinNumberInRotateArray:array];
}
