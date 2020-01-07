//
//  QuestionListNode.m
//  剑指offer
//
//  Created by ananooo on 2020/1/7.
//  Copyright © 2020 admin. All rights reserved.
//

#import "QuestionListNode.h"

@implementation ListNode

@end

@implementation QuestionListNode

+(NSArray *)printListFromTailToHead:(ListNode *)node{
    NSMutableArray *stackArray = [NSMutableArray array];
    while (node) {
        [stackArray addObject:@(node.data)];
        node = node.next;
    }
    NSMutableArray *outArray = [NSMutableArray array];
    while (stackArray.lastObject) {
        [outArray addObject:stackArray.lastObject];
        [stackArray removeLastObject];
    }
    return outArray;
}

@end
