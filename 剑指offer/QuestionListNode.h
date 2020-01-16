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

@interface RandomListNode:NSObject
@property(nonatomic ,assign)NSInteger  data;
@property(nonatomic ,strong)RandomListNode  *next;
@property(nonatomic ,strong)RandomListNode  *random;
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


/**
 *题目：输入两个单调递增的链表，输出两个链表合成后的链表，当然我们需要合成后的链表满足单调不减规则
 *
 *解题思路：其中的单调不减规则  即 f(x1)<=f(x2) 在作用域中满足（x1<x2）
 **/
+(ListNode *)zz_MergeTwoList:(ListNode *)list1 andList:(ListNode *)list2;


/**题目：25输入一个复杂链表（每个节点中有节点值，以及两个指针，一个指向下一个节点，另一个特殊指针指向任意一个节点），返回结果为复制后复杂链表的head。（注意，输出结果中请不要返回参数中的节点引用，否则判题程序会直接返回空）
 *
 *
 **/
+(RandomListNode *)zz_RandomListNodeClone:(RandomListNode *)head;

/**
 *题目36：输入两个链表，找出它们的第一个公共结点。
 *
 *解题思路：1.最先想到的是使用字典（hashMap）来存储，但是看了一下题解区的大神思路改用了双指针法
 *
 *
 *链表1      ： node0-->node1--->node2-->node3-->node4-->node5-->nil 此时改变next指向-->nodea-->nodeb-->node4-->node5
 *链表2      ： nodea-->nodeb-->node4-->node5-->nil此时改变next指向node0-->node1--->node2-->node3-->node4-->node5-->nil
 *
 *一旦两个指针相等 则返回
 *
 **/
+(ListNode *)zz_FindFirstCommonNode:(ListNode *)pHead1 andListNode:(ListNode *)pHead2;
@end

NS_ASSUME_NONNULL_END
