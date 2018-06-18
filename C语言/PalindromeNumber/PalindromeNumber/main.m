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
    if (x % 10 == 0) {
        return 0;
    }
    if (x < 0) {
        return 0;
    }
    if (x > INT_MAX) return Error;
    while (x > result) {
        
    }
    return x == result ||
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
