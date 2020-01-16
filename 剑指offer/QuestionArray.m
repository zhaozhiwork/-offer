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


+(NSInteger)zz_FindMinNumberInRotateArray:(NSArray<NSNumber *>*)array{
    if (array.count == 0) {return 0;}
    NSInteger low=0,mid,high=array.count-1;
    while (low<high) {
        mid = (high+low)/2;
        if ([array[mid] integerValue]<[array[high] integerValue]) {
            high = mid;
        }else if ([array[mid] integerValue]>[array[high] integerValue]){
            low = mid+1;
        }else{
            high --;
        }
    }
    return [array[low] integerValue];
}


+(NSArray *)zz_printMatrix:(NSArray <NSArray *>*)matrix{
    NSMutableArray *printArray = [NSMutableArray array];
    if (!matrix || matrix.count == 0) {
        return printArray;
    }
    
    NSInteger row = 0;
    NSInteger totalRow = matrix.count-1;
    NSInteger col = 0;
    NSInteger totalCol = matrix.firstObject.count-1;
 
    
    while (1) {
        
        /**最上面一行**/
        for (NSInteger i = col; i<=totalCol; i++) {
            [printArray addObject:matrix[row][i]];
        }
        row++;
        if (row>totalRow) {
            break;
        }
        /**最后边一列**/
        for (NSInteger i = row; i<=totalRow; i++) {
            [printArray addObject:matrix[i][totalCol]];
        }
        totalCol --;
        
        if (col>totalCol) {
            break;
        }
        /**最下面一行**/
        for (NSInteger i=totalCol; i>=col; i--) {
            [printArray addObject:matrix[totalRow][i]];
        }
        
        totalRow--;
        
        if (row>totalRow) {
            break;
        }
        
          /**最左边一列**/
        for (NSInteger i=totalRow; i>=row; i--) {
            [printArray addObject:matrix[i][col]];
        }
        
        col++;
        
        if (col>totalCol) {
            break;
        }
        
    }

    return printArray;
}

+(NSInteger)zz_MoreThanHalfNum_Solution:(NSArray *)array{
    NSMutableDictionary <NSString *, NSNumber *>*dict = [NSMutableDictionary dictionary];
    
    for (NSInteger i = 0; i<array.count; i++) {
        
        NSNumber *number = [dict valueForKey:[NSString stringWithFormat:@"%ld",[array[i] integerValue]]];
        
        if (number) {
            number = [NSNumber numberWithInteger:number.integerValue+1];
            [dict setObject:number forKey:[NSString stringWithFormat:@"%ld",[array[i] integerValue]]];
            if (number.integerValue>array.count/2) {
                return [array[i] integerValue];
            }
        }else{
            [dict setObject:[NSNumber numberWithInteger:1] forKey:[NSString stringWithFormat:@"%ld",[array[i] integerValue]]];
        }
    }
    
    return 0;
}


+(void)zz_FindNumberAppearOnce:(NSArray<NSNumber *>*)array andOutNum1:(NSMutableArray *)num1 andOutNum2:(NSMutableArray *)num2{
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    for (NSInteger i = 0; i<array.count; i++) {
        
        NSString *currentKey = [NSString stringWithFormat:@"%ld",array[i].integerValue];
        
        if ([dict valueForKey:currentKey]) {
            [dict removeObjectForKey:currentKey];
        }else{
            [dict setObject:@1 forKey:currentKey];
        }
    }
}
@end
