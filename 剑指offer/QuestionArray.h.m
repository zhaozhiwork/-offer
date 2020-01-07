//
//  Question1.m
//  剑指offer
//
//  Created by ananooo on 2020/1/7.
//  Copyright © 2020 admin. All rights reserved.
//

#import "QuestionArray.h"

@implementation QuestionArray

bool  FindTarget(int array[][4],int length,int target){
    
    int row,col;
    row=0;
    col = length;
    
    while (row<length && col>=0) {
        if (target<array[row][col]) {
            col--;
        }else if (target>array[row][col]){
            row++;
        }else{
            return true;
        }
    }
    return false;
}

+(BOOL)zz_FindTargetWithNsArray:(NSArray *)array andWithTarget:(NSInteger)target{
    NSInteger row,col,length;
    row  = 0;
    col = array.count;
    length = array.count;
    while (row<length && col>=0) {
         if (target<[array[row][col] integerValue]) {
             col--;
         }else if (target>[array[row][col] integerValue]){
             row++;
         }else{
             return YES;
         }
     }
     return NO;
}

@end
