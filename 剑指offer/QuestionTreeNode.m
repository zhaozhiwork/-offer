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

@end
