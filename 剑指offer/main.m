//
//  main.m
//  剑指offer
//
//  Created by ananooo on 2020/1/7.
//  Copyright © 2020 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

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

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        int a[4][4] = {
            {1,2,3,4},
            {5,6,7,8},
            {9,10,11,12},
            {13,14,15,16}
        };

        
    bool   result   =     FindTarget(a, 4,3);
        
    }
    return 0;
}
