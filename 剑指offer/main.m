//
//  main.m
//  剑指offer
//
//  Created by ananooo on 2020/1/7.
//  Copyright © 2020 admin. All rights reserved.
//


#warning 题目27字符串的排列暂时不会  \\ 题目31数字中出现的1赞暂时不会

#import <Foundation/Foundation.h>
#import "QuestionArray.h"
#import "QuestionString.h"
#import "QuestionListNode.h"
#import "QuestionTreeNode.h"
#import "QuestionFibonacci.h"
#import "QuestionDymiac.h"
#import "QuestionStack.h"
#import "QuestionSort.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
   NSInteger result=      [QuestionDymiac zz_GetUglyNumber:3];
  
        
    }
    return 0;
}

void testPrintMinNumber(){
      NSString *result  =    [QuestionString zz_PrintMinNumber:@[@3,@32,@321]];
      NSLog(@"%@",result);
}

void testFindGreatestSumOfSubArray(){
      NSInteger result =   [QuestionDymiac zz_FindGreatestSumOfSubArray:@[@6,@-3,@-2,@7,@-15,@1,@2,@2]];
      NSLog(@"%ld",result);
}

void testGetLeastNumber(){
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@4,@5,@1,@6,@2,@7,@3,@8]];
    NSArray *result   =  [QuestionSort zz_GetLeastNumbers_Solution:array andWithLeastK:4];
    NSLog(@"%@",result);
}

void testMoreThanHalf(){
    NSInteger integer  =   [QuestionArray zz_MoreThanHalfNum_Solution:@[@1,@2,@3,@2,@2,@2,@5,@4,@2]];
    NSLog(@"%ld",integer);
}

void testListNodeCopy(){
        RandomListNode *head = [[RandomListNode alloc]init];
         head.data = 3;
         
         RandomListNode *next1 = [[RandomListNode alloc]init];
         next1.data = 5;
         head.next = next1;
         
         RandomListNode *random1 = [[RandomListNode alloc]init];
         random1.data = 6;
         head.random = random1;
         
         
         RandomListNode *next2 = [[RandomListNode alloc]init];
         next2.data = 7;
         next1.next = next2;
         next2.next = random1;
         
       RandomListNode *testHead =   [QuestionListNode zz_RandomListNodeClone:head];
         
         NSLog(@"%@",testHead);
}

void testzz_FindPath(){
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
       NSLog(@"%@",result);
}

void testVerifySquenceBST(){
       BOOL result  =   [QuestionTreeNode zz_VerifySquenceOfBST:@[@3,@4,@9,@5,@10,@12,@11]];
      NSLog(@"%d",result);
}

void testPrintFromToBottom(){
      NSArray *preArray = @[@1,@2,@4,@7,@3,@5,@6,@8];
      NSArray *inArray = @[@4,@7,@2,@1,@5,@3,@8,@6];
      TreeNode *tmp = [QuestionTreeNode zz_reLayoutBinaryTree:preArray andWithInResult:inArray];
    
     NSArray *result =   [QuestionTreeNode zz_printFromTopToBottom:tmp];
    
     NSLog(@"%@",result);
}

void testIsPopOrder(){
       BOOL result  =   [QuestionStack  zz_isPopOrder:@[@1,@2,@3,@4,@5] andWith:@[@4,@5,@3,@2,@1]];
    NSLog(@"%d",result);
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
    
    NSLog(@"%@",testNumber);
     
       [testStack pop];
       
     NSNumber *testNumber2 =  [testStack min];
    
    NSLog(@"%@",testNumber2);
}


void testPrintMatrix(){
      NSArray *tmp =@[@[@1,@2,@3,@4],@[@5,@6,@7,@8],@[@9,@10,@11,@12],@[@13,@14,@15,@16]];
      NSArray *testResult = [QuestionArray zz_printMatrix:tmp];
    
    NSLog(@"%@",testResult);
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
        
    NSLog(@"%@",head);
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
       NSLog(@"%@",head);
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
       NSLog(@"%@",resultNode);
}

void testReOrderArray(){
    NSArray *tmp1 = @[@(5),@(4),@(6),@(8),@(9),@(2),@(19),@(20),@(21)];
    NSMutableArray *tmp = [NSMutableArray arrayWithArray:tmp1];
    [QuestionDymiac zz_reOrderArray:tmp];
}

void testPower(){
     double result = [QuestionDymiac zz_Power:10.0 andWith:-2];
    NSLog(@"%f",result);
}

void testNumberOF1(){
    NSInteger result = [QuestionDymiac zz_NumberOF1Complete:10];
     NSLog(@"%ld",result);
}

void testJumoFloor(){
   /**变态跳台阶问题**/
    NSInteger result = [QuestionDymiac zz_jumpFloor:3];
     NSLog(@"%ld",result);
}

void testFibonacci(){
       NSInteger result =  [QuestionFibonacci zz_FibonacciWithInputNumber:10];
    
       NSInteger result2 =  [QuestionFibonacci zz_FibonacciWithInputNumberNoRecursion:10];
    
    NSLog(@"%ld,%ld",result,result2);
}

void testQuestion4(){
    NSArray *preArray = @[@1,@2,@4,@7,@3,@5,@6,@8];
    NSArray *inArray = @[@4,@7,@2,@1,@5,@3,@8,@6];
    TreeNode *tmp = [QuestionTreeNode zz_reLayoutBinaryTree:preArray andWithInResult:inArray];
    NSLog(@"%@",tmp);
}

void testMinNumberInArray(){
    NSArray *array = @[@3,@4,@5,@1,@2];
    NSInteger result  =  [QuestionArray zz_FindMinNumberInRotateArray:array];
    NSLog(@"%ld",result);
}
