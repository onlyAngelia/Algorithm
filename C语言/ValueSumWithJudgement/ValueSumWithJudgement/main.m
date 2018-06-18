//
//  main.m
//  ValueSumWithJudgement
//
//  Created by lanjiying on 2018/6/18.
//  Copyright © 2018年 lanjiying_Angelia. All rights reserved.
//

#import <Foundation/Foundation.h>

#define Error 0
//函数指针
typedef int(*fun)(int n);

int ValueSum(int n)
{
    return 0;
}

int ValueSumTwo(int n)
{
    static fun f[2] = {ValueSum, ValueSumTwo};
    return n + f[!!n](n - 1);
}

// && 递归调用
int  valueSum(int n, int sum)
{
    sum += n;
    n && valueSum(n - 1,sum);
    return sum;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int inputNumber;
        int sum = 0;
        printf("请输入一个整数，求连续和");
        scanf("%d",&inputNumber);
        if (inputNumber < 0 || inputNumber > (INT_MAX - 1)/2) {
            return Error;
        }
//        printf("the sum is %d\n",ValueSumTwo(inputNumber));
        printf("the sum is %d\n",valueSum(inputNumber, sum));
    }
    return 0;
}
