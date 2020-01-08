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
 *输入一个链表，按链表从尾到头的顺序返回一个ArrayList
 **/
+(NSArray *)zz_printListFromTailToHead:(ListNode *)node;
@end

NS_ASSUME_NONNULL_END
