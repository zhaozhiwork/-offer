//
//  QuestionTreeNode.h
//  剑指offer
//
//  Created by ananooo on 2020/1/7.
//  Copyright © 2020 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 *树相关
 **/

@interface TreeNode:NSObject
@property(nonatomic ,assign)NSInteger data ;
@property(nonatomic ,strong)TreeNode  *left;
@property(nonatomic ,strong)TreeNode  *right;
@end

@interface QuestionTreeNode : NSObject

/**
 *输入某二叉树的前序遍历和中序遍历的结果，请重建出该二叉树。假设输入的前序遍历和中序遍历的结果中都不含重复的数字。例如输入前序遍历序列{1,2,4,7,3,5,6,8}和中序遍历序列{4,7,2,1,5,3,8,6}，则重建二叉树并返回。
 **/

+(TreeNode *)zz_reLayoutBinaryTree:(NSArray *)preArray andWithInResult:(NSArray *)inArray;


/**
 *quesiton 17 :  输入两棵二叉树A，B，判断B是不是A的子结构。（ps：我们约定空树不是任意一个树的子结构)
 **/

+(BOOL)zz_HasSubTree:(TreeNode *)root1 andWith:(TreeNode *)root2;


/**
 *question18:镜像二叉树  操作给定的二叉树，将其变换为源二叉树的镜像；
 **/
+(void )zz_MirrorTree:(TreeNode *)tree;

/**
 *问题22：从上往下打印出二叉树的每个节点，同层节点从左至右打印。
 *解题思路：层序遍历二叉树
 **/
+(NSArray *)zz_printFromTopToBottom:(TreeNode *)root;

/**
 *问题23：输入一个整数数组，判断该数组是不是某二叉搜索树的后序遍历的结果。如果是则输出Yes,否则输出No。假设输入的数组的任意两个数字都互不相同。
 *
 *解题思路：一脸懵逼的来一脸懵逼的出去
 *
 *二叉搜索树即二叉排序树
 *
 *定义：
 * (1）若左子树不空，则左子树上所有结点的值均小于它的根结点的值；
 （2）若右子树不空，则右子树上所有结点的值均大于它的根结点的值；
 （3）左、右子树也分别为二叉排序树；
 （4）没有键值相等的结点。
 *
 *此处的分割依据是所有结点的值均小于根结点的值
 *
 * 最主要的是递归分割数组  分界点即查找大于根结点的值，然后拆分为  左子树数组和右子树数组
 */

+(BOOL)zz_VerifySquenceOfBST:(NSArray <NSNumber *>*)sequence;


/**
 *题目24：输入一颗二叉树的跟节点和一个整数，打印出二叉树中结点值的和为输入整数的所有路径。路径定义为从树的根结点开始往下一直到叶结点所经过的结点形成一条路径。(注意: 在返回值的list中，数组长度大的数组靠前)
 *
 **
 *解题思路：树的深度遍历  带有记忆性的DFS来解决
 ***/
+(NSMutableArray <NSMutableArray <NSNumber*>*>*)zz_FindPath:(TreeNode *)root andWithTarget:(NSInteger)target;


/*
 *题目26：输入一棵二叉搜索树，将该二叉搜索树转换成一个排序的双向链表。要求不能创建任何新的结点，只能调整树中结点指针的指向
 *
 * 解题思路：二叉排序树，直接中序遍历，修改左右指针指向，相当于线索二叉树的变形
 *
 **/
+(TreeNode *)zz_Convert:(TreeNode *)root;


/**
 *题目38：输入一棵二叉树，求该树的深度。从根结点到叶结点依次经过的结点（含根、叶结点）形成树的一条路径，最长路径的长度为树的深度。
 *
 *解题思路：二叉树的深度遍历，求最大值
 ***/
+(NSInteger)zz_TreeDepth:(TreeNode *)root;

/**
 *题目39：输入一棵二叉树，判断该二叉树是否是平衡二叉树
 *
 *解题思路：平衡二叉树左右子树的高度至多相差1 ，我们深度遍历树的同时，只需要判断左右子树的高度差即可
 **/
+(BOOL)zz_IsBalanced_Solution:(TreeNode *)root;
@end

NS_ASSUME_NONNULL_END
