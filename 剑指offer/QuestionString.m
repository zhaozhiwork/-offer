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


+(NSString *)zz_PrintMinNumber:(NSArray<NSNumber *>*)numbers{
    
    NSMutableArray *mutableNumbers = [NSMutableArray arrayWithArray:numbers];
    
    for (NSInteger i = 0;i<mutableNumbers.count ; i++) {
        
        for (NSInteger j = i+1; j<mutableNumbers.count; j++) {
            
            NSString *front = [NSString stringWithFormat:@"%@",mutableNumbers[i]];
            NSString *after = [NSString stringWithFormat:@"%@",mutableNumbers[j]];
            NSString *frontAppend = [NSString stringWithFormat:@"%@%@",front,after];
            NSString *afterAppend = [NSString stringWithFormat:@"%@%@",after,front];
            
            if (afterAppend.integerValue<frontAppend.integerValue) {
                NSNumber *tmpNumber = mutableNumbers[i];
                [mutableNumbers replaceObjectAtIndex:i withObject:mutableNumbers[j]];
                [mutableNumbers replaceObjectAtIndex:j withObject:tmpNumber];
            }
        }
    }
    
    NSString *result = @"";
    for (NSInteger k=0; k<mutableNumbers.count; k++) {
        result=  [result stringByAppendingFormat:@"%@", [NSString stringWithFormat:@"%@",mutableNumbers[k]]];
    }
    
    return result;
}

+(NSInteger)zz_FristNotRepeatingChar:(NSString *)str{
    
    NSMutableDictionary <NSString *,NSNumber *>*charDict  = [NSMutableDictionary dictionary];
    
    for (NSInteger i =0; i<str.length; i++) {
        char currentChar = [str characterAtIndex:i];
        NSString *key = [NSString stringWithFormat:@"%c",currentChar];
        if (![charDict valueForKey:key]) {
            [charDict setObject:@1 forKey:key];
        }else{
            NSNumber *oldCount = [charDict valueForKey:key];
            NSInteger newCount = oldCount.integerValue +1;
            [charDict setObject:[NSNumber numberWithInteger:newCount] forKey:key];
        }
    }
    
    NSInteger showIndex = -1;
    
    for (NSInteger j=0; j<str.length; j++) {
        char currentChar = [str characterAtIndex:j];
        NSString *key = [NSString stringWithFormat:@"%c",currentChar];
        NSNumber *number =[charDict valueForKey:key];
        if (number.integerValue == 1) {
            return j;
        }
    }
    
    return showIndex;
}
@end
