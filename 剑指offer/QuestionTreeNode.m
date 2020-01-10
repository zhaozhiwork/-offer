//
//  QuestionTreeNode.m
//  剑指offer
//
//  Created by ananooo on 2020/1/7.
//  Copyright © 2020 admin. All rights reserved.
//

#import "QuestionTreeNode.h"

@implementation TreeNode


@end

@implementation QuestionTreeNode

+(TreeNode *)zz_reLayoutBinaryTree:(NSArray *)preArray andWithInResult:(NSArray *)inArray{
    
    if (preArray.count==0 || inArray.count ==0) {
        return nil;
    }
    
    TreeNode *rootNode = [[TreeNode alloc]init];
    rootNode.data = [preArray.firstObject integerValue];
    
    for (NSInteger i = 0; i<inArray.count; i++) {
        /**找到根结点 然后拆分数组**/
        if (inArray[i] == preArray.firstObject) {
            rootNode.left = [self zz_reLayoutBinaryTree:[preArray subarrayWithRange:NSMakeRange(1, i)] andWithInResult:[inArray subarrayWithRange:NSMakeRange(0, i)]];
            rootNode.right = [self zz_reLayoutBinaryTree:[preArray subarrayWithRange:NSMakeRange(i+1, preArray.count-i-1)] andWithInResult:[inArray subarrayWithRange:NSMakeRange(i+1, inArray.count-i-1)]];
        }
    }
    
    return rootNode;
}

+(BOOL)zz_HasSubTree:(TreeNode *)root1 andWith:(TreeNode *)root2{
    
    if (!root1)return NO;
    if (!root2)return NO;
    
    BOOL result = NO ;
    
    /**如果当前的根节点相同  递归比对更深层次的左右子树结点的值**/
    if (root1.data== root2.data) {
        result = [self zz_recursiveTree:root1 andWith:root2];
    }
    
    /**如果当前的根节点不相同  递归比对root1更深层次的左子树结点的值与root2来比对**/
    if (!result) {
        result = [self zz_HasSubTree:root1.left andWith:root2];
    }
    
     /**如果当左节点的值与root2根节点值不相同  递归比对root1更深层次的右子树结点的值与root2来比对**/
    if (!result) {
       result = [self zz_HasSubTree:root1.right andWith:root2];
    }
    
    return result;
    
//    return ([self zz_recursiveTree:root1 andWith:root2] || [self zz_HasSubTree:root1.left andWith:root2]  || [self zz_HasSubTree:root1.right andWith:root2]);
}

+(BOOL)zz_recursiveTree:(TreeNode *)root1 andWith:(TreeNode *)root2{
  
    if (!root2)return YES;
    if (!root1)return NO;
    if (root1.data !=root2.data) {
        return NO;
    }
    /**根结点相同时候 开始比对左右子树**/
    return [self zz_recursiveTree:root1.left andWith:root1.left] && [self zz_recursiveTree:root1.right andWith:root2.right];
}
@end
