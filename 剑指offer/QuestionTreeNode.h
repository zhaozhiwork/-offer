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
@end

NS_ASSUME_NONNULL_END
