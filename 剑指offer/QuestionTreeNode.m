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


+(void)zz_MirrorTree:(TreeNode *)tree{
    
    if (tree) return;
    TreeNode *tmpNode = tree.left;
    tree.left = tree.right;
    tree.right = tmpNode;
    [self zz_MirrorTree:tree.left];
    [self zz_MirrorTree:tree.right];
}

+(NSArray *)zz_printFromTopToBottom:(TreeNode *)root{
    NSMutableArray *orderArray = [NSMutableArray array];
    if (!root) {
        return orderArray;
    }
    TreeNode *headNode;
    NSMutableArray *queue = [NSMutableArray array];
    [queue addObject:root];
   
    while (queue.count>0) {
        headNode = queue.firstObject;
        [queue removeObjectAtIndex:0];
        
        if (headNode.left) {
            [queue addObject:headNode.left];
        }
        
        if (headNode.right) {
            [queue addObject:headNode.right];
        }
        
         [orderArray addObject:[NSNumber numberWithInteger:headNode.data]];
    }
    return orderArray;
}


+(BOOL)zz_VerifySquenceOfBST:(NSArray <NSNumber *>*)sequence{
    if (sequence.count==0) {
        return NO;
    }
    
    return [self zz_RecursiveVerifySquence:sequence with:0 andWithEnd:sequence.count-1];
}

+(BOOL)zz_RecursiveVerifySquence:(NSArray<NSNumber *>*)sequence with:(NSInteger)start andWithEnd:(NSInteger)end{
    if (start>=end) {return YES;}/**递归成功的退出条件**/
    
    NSInteger key = sequence[end].integerValue;  /**每次分割的根节点**/
    NSInteger  i;/**记录拆分左右子树的下标***/
    for ( i=start; i<end; i++) {
        if (sequence[i].integerValue>key) {
            break; /****分割左子树数据和右子树数据**/
        }
    }
    
    /**判断右子树的结点值有没有小于根结点的值，如果有则返回NO,如果均大于根结点则继续拆分左右子树**/
    for (NSInteger j = i; j<end; j++) {
        if (sequence[j].integerValue<key) {
            return NO;
        }
    }
    
    return [self zz_RecursiveVerifySquence:sequence with:start andWithEnd:i-1]&&[self zz_RecursiveVerifySquence:sequence with:i andWithEnd:end-1];
}


+(NSMutableArray <NSMutableArray <NSNumber*>*>*)zz_FindPath:(TreeNode *)root andWithTarget:(NSInteger)target{
    
    NSMutableArray *result = [NSMutableArray array];
    
    if (!root) {
        return nil;
    }
    
    NSMutableArray *traceArray = [NSMutableArray array];
    /**深度遍历左右子树***/
    
    [self zz_RecursiveTreeNode:root andTarget:target resultArray:result traceArray:traceArray];
    
    /**排序数组长度大的路径在前面**/
   [ result sortUsingComparator:^NSComparisonResult(NSMutableArray *obj1, NSMutableArray *obj2) {
       if (obj1.count>obj2.count) {
           return NSOrderedAscending;
       }
       return NSOrderedDescending;
   }];
    
    return result;
}

+(void)zz_RecursiveTreeNode:(TreeNode *)root andTarget:(NSInteger)target resultArray:(NSMutableArray *)result traceArray:(NSMutableArray *)trace{
    
    [trace addObject:[NSNumber numberWithInteger:root.data]];
    
    if (!root.left && !root.right && target == root.data) {
        /*叶子结点***/
        [result addObject:[trace copy]];
        [trace removeLastObject];/**找到符合条件的路径要进行一次回溯**/
        return;
    }
    
    if (root.left) {
        [self zz_RecursiveTreeNode:root.left andTarget:target-root.data resultArray:result traceArray:trace];
    }
    if (root.right) {
        [ self zz_RecursiveTreeNode:root.right andTarget:target-root.data resultArray:result traceArray:trace];
    }
    [trace removeLastObject];/**找不到符合条件的路径，也要每次递归完进行一次回溯**/
}
@end
