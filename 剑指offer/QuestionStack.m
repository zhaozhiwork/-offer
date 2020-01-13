//
//  QuestionStack.m
//  剑指offer
//
//  Created by ananooo on 2020/1/13.
//  Copyright © 2020 admin. All rights reserved.
//

#import "QuestionStack.h"

@interface QuestionStack ()

@property(nonatomic ,strong)NSMutableArray  *assistStack;
@end

@implementation QuestionStack

-(instancetype)init{
    if (self = [super init]) {
        self.stack = [NSMutableArray array];
        self.assistStack = [NSMutableArray array];
    }
    return self;
}

-(void)push:(NSNumber *)number{
    [self.stack addObject:number];
    if (self.assistStack.count == 0) {
        [self.assistStack addObject:number];
    }else{
        if (number.intValue<[self.assistStack.lastObject integerValue]) {
            [self.assistStack addObject:number];
        }
    }
}

-(void)pop{
    if ([self.stack.lastObject integerValue]==[self.assistStack.lastObject integerValue]) {
        [self.assistStack removeLastObject];
    }
    [self.stack removeLastObject];
}

-(NSNumber *)top{
    return self.stack.lastObject;
}

-(NSNumber *)min{
    return self.assistStack.lastObject;
}

+(BOOL)zz_isPopOrder:(NSArray *)pushA andWith:(NSArray *)pushB{
    
    QuestionStack *stack  =[[QuestionStack alloc]init];
    
    NSInteger j = 0;
    
    for (NSInteger i = 0; i<pushA.count; i++) {
        [stack push:pushA[i]];
        
        while (stack.stack.count >0 &&stack.top.integerValue == [pushB[j] integerValue] ) {
            [stack pop];
            j++;
        }
    }
    return stack.stack.count==0?YES:NO;
}

@end
