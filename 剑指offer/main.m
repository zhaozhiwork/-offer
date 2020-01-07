//
//  main.m
//  剑指offer
//
//  Created by ananooo on 2020/1/7.
//  Copyright © 2020 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuestionArray.h"
#import "QuestionString.h"
#import "QuestionListNode.h"
#import "QuestionTreeNode.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSArray *preArray = @[@1,@2,@4,@7,@3,@5,@6,@8];
        NSArray *inArray = @[@4,@7,@2,@1,@5,@3,@8,@6];
        
        TreeNode *tmp = [QuestionTreeNode reLayoutBinaryTree:preArray andWithInResult:inArray];
        
    }
    return 0;
}
