//
//  main.m
//  YAPrintCasaPassword
//
//  Created by lanjiying on 2018/6/17.
//  Copyright © 2018年 lanjiying_Angelia. All rights reserved.
//

#import <Foundation/Foundation.h>

#define OK 1
#define Error 0

typedef char LetterType;
typedef int  Status;
//创建节点
typedef struct LetterNode{
    
    LetterType data;
    struct LetterNode *prior;
    struct LetterNode *next;
    
}LetterNode, *CasaLetterList;

//创建字母双向循环链表
Status InitLetterList(CasaLetterList *L)
{
    LetterNode *p, *q;
    int i;
    *L = (CasaLetterList)malloc(sizeof(LetterNode));
    if (!(*L)) {
        return Error;
    }
    (*L)->next = (*L)->prior = NULL;
    p = (*L);
    for (i = 0; i < 26; i++) {
        q = (LetterNode *)malloc(sizeof(LetterNode));
        if (!q) {
            return Error;
        }
        q->data = 'A'+i;
        q->prior = p;
        q->next = p->next;
        p->next = q;
        p = q;
    }
    p->next = (*L)->next;
    (*L)->next->prior = p;
    return OK;
}

//根据输入的移位数字移动头指针
void casaLetter(CasaLetterList *L,int i)
{
    if(i > 0){
        do {
            (*L)= (*L)->next;
        } while (--i);
    }
    if (i < 0) {
        do {
            (*L) = (*L)->next;
        } while (++i);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int i,n;
        CasaLetterList L;
        printf("please input a numbmer");
        scanf("%d", &n);
        InitLetterList(&L);
        casaLetter(&L,n);
        for (i = 0; i < 26; i++) {
            L = L->next;
            printf("%c",L->data);
        }
        printf("\n");
    }
    return 0;
}
