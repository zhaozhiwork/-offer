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
#import "QuestionFibonacci.h"
#import "QuestionDymiac.h"
#import "QuestionStack.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        TreeNode *root = [[TreeNode alloc]init];
        root.data = 10;
        
        TreeNode *left1Node = [[TreeNode alloc]init];
        left1Node.data = 5;
        root.left = left1Node;
        
        
        TreeNode *right1Node = [[TreeNode alloc]init];
        right1Node.data = 7;
        root.right = right1Node;
        
        TreeNode *left2Node = [[TreeNode alloc]init];
        left2Node.data = 8;
        left1Node.left = left2Node;
        
        TreeNode *right2Node = [[TreeNode alloc]init];
        right2Node.data = 6;
        left1Node.right = right2Node;
        
        TreeNode *left3Node = [[TreeNode alloc]init];
        left3Node.data = 4;
        right1Node.left = left3Node;
        
        TreeNode *right4Node = [[TreeNode alloc]init];
        right4Node.data = 3;
        right1Node.right = right4Node;
        
        TreeNode *right5Node = [[TreeNode alloc]init];
        right5Node.data = 1;
        right4Node.right = right5Node;
        
        /***
         *          10
         *     5          7
         *   8    6    4   3
        *                        1
         **/

       NSMutableArray *result =   [QuestionTreeNode zz_FindPath:root andWithTarget:21];
        
    }
    return 0;
}



void testVerifySquenceBST(){
       BOOL result  =   [QuestionTreeNode zz_VerifySquenceOfBST:@[@3,@4,@9,@5,@10,@12,@11]];
}

void testPrintFromToBottom(){
      NSArray *preArray = @[@1,@2,@4,@7,@3,@5,@6,@8];
      NSArray *inArray = @[@4,@7,@2,@1,@5,@3,@8,@6];
      TreeNode *tmp = [QuestionTreeNode zz_reLayoutBinaryTree:preArray andWithInResult:inArray];
    
     NSArray *result =   [QuestionTreeNode zz_printFromTopToBottom:tmp];
}

void testIsPopOrder(){
       BOOL result  =   [QuestionStack  zz_isPopOrder:@[@1,@2,@3,@4,@5] andWith:@[@4,@5,@3,@2,@1]];
}

void testStackMin(){
     QuestionStack *testStack = [[QuestionStack alloc]init];
      [testStack push:@(6)];
      [testStack push:@(5)];
      [testStack push:@(8)];
      [testStack push:@(4)];
      [testStack push:@(3)];
      [testStack push:@(9)];
     
     [testStack pop];
     
     NSNumber *testNumber =  [testStack min];
     
       [testStack pop];
       
     NSNumber *testNumber2 =  [testStack min];
}

void testPrintMatrix(){
      NSArray *tmp =@[@[@1,@2,@3,@4],@[@5,@6,@7,@8],@[@9,@10,@11,@12],@[@13,@14,@15,@16]];
      NSArray *testResult = [QuestionArray zz_printMatrix:tmp];
}

void testMergeNode(){
    ListNode *rootNode = [[ListNode alloc]init];
    rootNode.data = 1;
    ListNode *nextNode = rootNode;
    for (NSInteger i = 2; i<5; i++) {
        ListNode *tmpNode = [[ListNode alloc]init];
        tmpNode.data = i;
        nextNode.next = tmpNode;
        nextNode = tmpNode;
    }
        
    
        ListNode *rootNode1= [[ListNode alloc]init];
        rootNode1.data = 3;
        ListNode *nextNode1 = rootNode1;
        for (NSInteger j = 4; j<10; j++) {
            ListNode *tmpNode = [[ListNode alloc]init];
            tmpNode.data = j;
            nextNode1.next = tmpNode;
            nextNode1 = tmpNode;
        }
        
     ListNode *head   =   [QuestionListNode zz_MergeTwoList:rootNode andList:rootNode1];
        
}

void testReverseList(){
     ListNode *rootNode = [[ListNode alloc]init];
        rootNode.data = 0;
        ListNode *nextNode = rootNode;
        for (NSInteger i = 1; i<10; i++) {
            ListNode *tmpNode = [[ListNode alloc]init];
            tmpNode.data = i;
            nextNode.next = tmpNode;
            nextNode = tmpNode;
        }
     ListNode *head =  [QuestionListNode zz_reverseList:rootNode];
}

void testKthToTail(){
       ListNode *rootNode = [[ListNode alloc]init];
       rootNode.data = 0;
       ListNode *nextNode = rootNode;
       for (NSInteger i = 1; i<10; i++) {
           ListNode *tmpNode = [[ListNode alloc]init];
           tmpNode.data = i;
           nextNode.next = tmpNode;
           nextNode = tmpNode;
       }
       
    ListNode *resultNode =  [QuestionListNode zz_FindKthToTail:rootNode andIndex:9];
}

void testReOrderArray(){
    NSArray *tmp1 = @[@(5),@(4),@(6),@(8),@(9),@(2),@(19),@(20),@(21)];
    NSMutableArray *tmp = [NSMutableArray arrayWithArray:tmp1];
    [QuestionDymiac zz_reOrderArray:tmp];
}

void testPower(){
     double result = [QuestionDymiac zz_Power:10.0 andWith:-2];
}

void testNumberOF1(){
    NSInteger result = [QuestionDymiac zz_NumberOF1Complete:10];
}

void testJumoFloor(){
   /**变态跳台阶问题**/
    NSInteger result = [QuestionDymiac zz_jumpFloor:3];
}

void testFibonacci(){
       NSInteger result =  [QuestionFibonacci zz_FibonacciWithInputNumber:10];
    
       NSInteger result2 =  [QuestionFibonacci zz_FibonacciWithInputNumberNoRecursion:10];
}

void testQuestion4(){
    NSArray *preArray = @[@1,@2,@4,@7,@3,@5,@6,@8];
    NSArray *inArray = @[@4,@7,@2,@1,@5,@3,@8,@6];
    TreeNode *tmp = [QuestionTreeNode zz_reLayoutBinaryTree:preArray andWithInResult:inArray];
}

void testMinNumberInArray(){
    NSArray *array = @[@3,@4,@5,@1,@2];
    NSInteger result  =  [QuestionArray zz_FindMinNumberInRotateArray:array];
}
