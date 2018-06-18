//
//  main.m
//  PalindromeNumber
//
//  Created by lanjiying on 2018/6/18.
//  Copyright © 2018年 lanjiying_Angelia. All rights reserved.
//

#import <Foundation/Foundation.h>
#define Error 0
bool isPalindrome(int x) {
    
    int result = 0;
    if (x % 10 == 0 && x != 0) {
        return false;
    }
    if (x < 0) {
        return false;
    }
    if (x > INT_MAX) return Error;
    while (x > result) {
        result = result * 10 + x % 10;
        x /= 10;
    }
    return x == result || x == result/10;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int n;
        printf("请输入要判断的数字");
        scanf("%d", &n);
        printf("%d\n", isPalindrome(n));
    }
    return 0;
}
