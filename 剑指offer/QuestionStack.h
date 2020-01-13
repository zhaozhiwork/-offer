//
//  QuestionStack.h
//  剑指offer
//
//  Created by ananooo on 2020/1/13.
//  Copyright © 2020 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN



@interface QuestionStack : NSObject

@property(nonatomic ,strong)NSMutableArray  *stack;
/**
 *题目20：定义栈的数据结构，请在该类型中实现一个能够得到栈中所含最小元素的min函数（时间复杂度应为O（1）
 *
 *解题思路：定义两个栈一个用来t入栈，另外一个辅助栈用来记录主栈入栈时候i记录小值
 *
 *当辅助栈为空时候，主栈入栈直接也入辅助栈，在主栈一次入栈时候，判断主栈的入栈值是否小于辅助栈的栈顶值，如果小于则入辅助栈
 *
 *当主栈出栈时候，判断出栈值是否是辅助栈的栈顶值，如果是辅助栈也出栈
 **/
-(void)push:(NSNumber *)number;

-(void)pop;

-(NSNumber *)top;

-(NSNumber *)min;


/**
 *题目21：输入两个整数序列，第一个序列表示栈的压入顺序，请判断第二个序列是否可能为该栈的弹出顺序。假设压入栈的所有数字均不相等。例如序列1,2,3,4,5是某栈的压入顺序，序列4,5,3,2,1是该压栈序列对应的一个弹出序列，但4,3,5,1,2就不可能是该压栈序列的弹出序列。（注意：这两个序列的长度是相等的）
 *
 *解题思路：本题考的是栈先进后出的规律，虽然中间可能出现先出栈再进栈但是只需要入栈时候操作保证栈顶的元素依次与出栈数组的下标保持一致即可
 **/
+(BOOL)zz_isPopOrder:(NSArray *)pushA andWith:(NSArray *)pushB;
@end

NS_ASSUME_NONNULL_END
