//
//  main.m
//  数字反转
//
//  Created by lanjiying on 2018/6/18.
//  Copyright © 2018年 lanjiying_Angelia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Palindrome Number.h"
#define Error 0

int reverse(int x) {
    int result = 0;
    do {
        int pop = x % 10;
        x /= 10;
        if(result > INT_MAX/10)return Error;
        if(result < INT_MIN/10)  return Error;
        result = result * 10 + pop;
    } while (x!= 0);
    return result;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int n;
        printf("请输入数字，进行反转");
        scanf("%d",&n);
        printf("%d\n",reverse(n));
    
    }
    return 0;
}
