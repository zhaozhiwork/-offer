//
//  QuestionListNode.h
//  剑指offer
//
//  Created by ananooo on 2020/1/7.
//  Copyright © 2020 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *链表相关
 **/

NS_ASSUME_NONNULL_BEGIN

@interface ListNode:NSObject
@property(nonatomic ,assign)NSInteger  data;
@property(nonatomic ,strong)ListNode  *next;
@end



@interface QuestionListNode : NSObject
/**
 *题目：输入一个链表，按链表从尾到头的顺序返回一个ArrayList
 **/
+(NSArray *)zz_printListFromTailToHead:(ListNode *)node;

/**
 *题目：输入一个链表，输出该链表中倒数第k个结点
 *
 *解题思路：我们可以使用快慢指针快指针走到第K位置时候，慢指针再与快指针y一起走，当快指针走完列表则输出慢指针的结点即可
 **/
+(ListNode *)zz_FindKthToTail:(ListNode *)node andIndex:(NSInteger)k;

/**
 *题目：输入一个链表，反转链表后，输出新链表的表头。
 *
 *解题思路：我们需要逐个调整每个结点的next指向，
 **/
+(ListNode *)zz_reverseList:(ListNode *)node;
@end

NS_ASSUME_NONNULL_END
