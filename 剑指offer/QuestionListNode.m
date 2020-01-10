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

+(NSArray *)zz_printListFromTailToHead:(ListNode *)node{
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

+(ListNode *)zz_FindKthToTail:(ListNode *)node andIndex:(NSInteger)k{
    if (k<=0) {return nil;}
    ListNode *targetNode = node;
    NSInteger tmp = 0;
    while (node.next) {
        node = node.next;
       
        if (tmp<k) {
             tmp++;
        }
        
        if (tmp==k) {
            targetNode = targetNode.next;
        }
    }
    return tmp<k?nil:targetNode;
}

+(ListNode *)zz_reverseList:(ListNode *)node{
    if (!node || !node.next) {
        return node;
    }
    
    ListNode *pre = nil;
    ListNode *next = nil;
    while (node) {
        
        next = node.next;
        
        node.next = pre;
        
        pre = node;
        
        node = next;
    }
    
    return pre;
}

+(ListNode *)zz_MergeTwoList:(ListNode *)list1 andList:(ListNode *)list2{
    if (!list1)
    return list2;
    if (!list2)
    return list1;
    ListNode *head = [[ListNode alloc]init];
    ListNode *mergeList = head;
    while (list1&&list2) {
        if (list1.data<list2.data) {
            head.next = list1;
             list1 = list1.next;
        }else{
            head.next = list2;
            list2 = list2.next;
        }
        head = head.next;
    }
    
    while (list1) {
        head.next = list1;
        list1 = list1.next;
        head = head.next;
    }
    while (list2) {
        head.next = list2;
        list2 = list1.next;
        head = head.next;
    }
        
    return mergeList.next;
}

@end
