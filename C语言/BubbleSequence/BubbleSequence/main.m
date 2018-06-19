//
//  main.m
//  BubbleSequence
//
//  Created by lanjiying on 2018/6/19.
//  Copyright © 2018年 lanjiying_Angelia. All rights reserved.
//

#import <Foundation/Foundation.h>
//冒泡排序
void BubbleSequence(int array[], int length)
{
    Boolean flag = true;
    while (flag) {
        flag = false;
        for (int i = 0; i < length - 1; i++) {
            if (array[i] > array[i + 1]) {
                int temp = array[i + 1];
                array[i + 1] = array[i];
                array[i] = temp;
                flag = true;
            }
        }
        length --;
    }
}
//快速排序
void QuickSequence(int array[], int left, int right)
{
    if (left < right) {
        int pivot = array[left];
        int low  = left;
        int high = right;
        while (low < high) {
            while (low < high && array[high] >= pivot) {
                high --;
                
            }
            array[low] = array[high];
            while (low < high && array[low] < pivot) {
                low ++;
            }
            array[high] = array[low];
        }
        array[low] = pivot;
        QuickSequence(array, left, low - 1);
        QuickSequence(array, low + 1, right);
    }
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int count;
        printf("请输入数组的长度");
        scanf("%d", &count);
        int array[count];
        
        printf("请输入要排序的数组");
        for (int i = 0; i < count; i ++) {
            scanf("%d",&array[i]);
        }
//        BubbleSequence(array, count);
        QuickSequence(array, 0, count - 1);
        for (int i = 0; i < count; i ++) {
            printf("%d  ",array[i]);
        }
        printf("\n");
    }
    return 0;
}
