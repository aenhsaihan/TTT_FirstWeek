//
//  main.m
//  18. Write a function to swap two integers
//
//  Created by Aditya Narayan on 11/19/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>




void swapIntegers(int *, int *);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int a = 3;
        int b = 6;
        
        swapIntegers(&a,&b);
        
        NSLog(@"%d %d", a, b);
    }
    return 0;
}

void swapIntegers(int *a, int *b) {
    
    int temp;
    
    temp = *a;
    *a = *b;
    *b = temp;
    
}