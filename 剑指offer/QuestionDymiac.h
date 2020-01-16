//
//  QuestionDymiac.h
//  剑指offer
//
//  Created by ananooo on 2020/1/8.
//  Copyright © 2020 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/*
 *动态规划问题
 **/

@interface QuestionDymiac : NSObject


/**
 * 题目：一只青蛙一次可以跳上1级台阶，也可以跳上2级……它也可以跳上n级。求该青蛙跳上一个n级的台阶总共有多少种跳法
 *
 * 解题思路：每个台阶都可以跳也都可以不跳，除了最后一个台阶必须跳上，
 **/

+(NSInteger)zz_jumpFloor:(NSInteger)target;

/**
 *题目：输入一个整数，输出该数二进制表示中1的个数。其中负数用补码表示。
 *
 **解题思路：我们只需要逐个检查位上面的值是否为1，我们可以巧妙的采取位运算，让一个mask值逐个进行mask<<1,左移，然后与g目标值进行位运算（与运算）得出的结果如果不等于0则，则1的个数+1
 ***/

+(NSInteger)zz_NumberOF1:(NSInteger)target;

/**查找1的改进**/
+(NSInteger)zz_NumberOF1Complete:(NSInteger)target;


/*
 *题目：给定一个double类型的浮点数base和int类型的整数exponent。求base的exponent次方。

 保证base和exponent不同时为0
 **/
+(double)zz_Power:(double)base andWith:(int)exponent;


/**
 *题目：输入一个整数数组，实现一个函数来调整该数组中数字的顺序，使得所有的奇数位于数组的前半部分，所有的偶数位于数组的后半部分，并保证奇数和奇数，偶数和偶数之间的相对位置不变。
 *
 ** 解题思路： 参考快速排序

 i++往前走碰到偶数停下来，j = i+1
 若 a[j]为偶数，j++前进，直到碰到奇数
 a[j]对应的奇数插到a[i]位置，j经过的j-i个偶数依次后移
 如果j==len-1时还没碰到奇数，证明i和j之间都为偶数了，完成整个移动
 **/
+(void)zz_reOrderArray:(NSMutableArray<NSNumber *>*)array;

/**
 *题目30：HZ偶尔会拿些专业问题来忽悠那些非计算机专业的同学。今天测试组开完会后,他又发话了:在古老的一维模式识别中,常常需要计算连续子向量的最大和,当向量全为正数的时候,问题很好解决。但是,如果向量中包含负数,是否应该包含某个负数,并期望旁边的正数会弥补它呢？例如:{6,-3,-2,7,-15,1,2,2},连续子向量的最大和为8(从第0个开始,到第3个为止)。给一个数组，返回它的最大连续子序列的和，你会不会被他忽悠住？(子向量的长度至少是1)
 *
 **解题思路：将数组遍历用一个中间值保存当前相加的结果最大值，如果向量继续相加大于中间值，则更新中间值
 **/
+(NSInteger)zz_FindGreatestSumOfSubArray:(NSArray<NSNumber *>*)array;

/**
 *题目31：求出1~13的整数中1出现的次数,并算出100~1300的整数中1出现的次数？为此他特别数了一下1~13中包含1的数字有1、10、11、12、13因此共出现6次,但是对于后面问题他就没辙了。ACMer希望你们帮帮他,并把问题更加普遍化,可以很快的求出任意非负整数区间中1出现的次数（从1 到 n 中1出现的次数）
 *
 *
 **/
+(NSInteger)zz_NumberOfBetween1AndN_Solution:(NSInteger)N;

/*
 *题目33：把只包含质因子2、3和5的数称作丑数（Ugly Number）。例如6、8都是丑数，但14不是，因为它包含质因子7。 习惯上我们把1当做是第一个丑数。求按从小到大的顺序的第N个丑数
 *
 *解题思路：一个抽数必然是乘上2   || 或者乘上3    ||或者乘上5得出的
 *但是难点在于他们之间的大小不好确定  所以我们用三个数组分别依次相乘2，3，5然后比较大小
 ***/
+(NSInteger)zz_GetUglyNumber:(NSInteger)index;

/**
 *题目37：统计一个数字在排序数组中出现的次数
 *
 *解题思路：排序数组证明数组是有序的，我们可以使用二分查找 ，找到目标值下标，然后往小于目标下标范围搜索，一遍往高于目标下标范围搜索
 **/
+(NSInteger)zz_GetNumberOfK:(NSArray<NSNumber *> *)orderArray andWithTarget:(NSInteger)K;


/**
 *题目：41：小明很喜欢数学,有一天他在做数学作业时,要求计算出9~16的和,他马上就写出了正确答案是100。但是他并不满足于此,他在想究竟有多少种连续的正数序列的和为100(至少包括两个数)。没多久,他就得到另一组连续正数和为100的序列:18,19,20,21,22。现在把问题交给你,你能不能也很快的找出所有和为S的连续正数序列? Good Luck!
 *
 *备注：输出所有和为S的连续正数序列。序列内按照从小至大的顺序，序列间按照开始数字从小到大的顺序
 *
 *
 *解题思路：一脸懵逼只想到暴力解决问题的办法，看到别人双指针解法，来确定滑动窗口宽度 真吊！！！！！！！！！！
 **/
+(NSArray *)zz_FIndContinousSequence:(NSInteger)sum;


/**
 *题目：42：输入一个递增排序的数组和一个数字S，在数组中查找两个数，使得他们的和正好是S，如果有多对数字的和等于S，输出两个数的乘积最小的。
 *
 *解题思路：使用头尾指针  数组是递增的，如果保证乘积最小，则两个数相距最远，
 *  array[low] + array[high] > target   high--
 *  array[low] + array[high] <target    low++;
 *  array[low] + array[high] =target    break;
 **/
+(NSArray *)zz_FindNumbersWithSum:(NSInteger)sum andArray:(NSArray *)array;
@end

NS_ASSUME_NONNULL_END
