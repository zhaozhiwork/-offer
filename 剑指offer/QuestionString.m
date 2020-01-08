//
//  QuestionString.m
//  剑指offer
//
//  Created by ananooo on 2020/1/7.
//  Copyright © 2020 admin. All rights reserved.
//

#import "QuestionString.h"

@implementation QuestionString

void replaceSpace(char *target,int length){
    int appendLenght = 0;
    for (int i = 0; i<length; i++) {
        if (target[i] == ' ') {
            appendLenght +=2;
        }
    }
    
    for (int i = length-1; i>=0; i--) {
        if (target[i] == ' ') {
            target[i+appendLenght] = '0';
            target[i+appendLenght-1] = '2';
            target[i+appendLenght-2] = '%';
             appendLenght -=2;
        }else{
            /**移动要占位的长度**/
            target[i+appendLenght] = target[i];
        }
    }
}

+(NSString *)zz_replaceSpaceString:(NSString *)targetString{
    return [targetString stringByReplacingOccurrencesOfString:@" " withString:@"%20"];
}

@end
