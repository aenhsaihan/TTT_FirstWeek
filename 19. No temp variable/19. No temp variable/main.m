//
//  main.m
//  19. No temp variable
//
//  Created by Aditya Narayan on 11/19/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

//#import <limits.h>
#import <Foundation/Foundation.h>



void swapIntegers(unsigned int *, unsigned int *);

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        unsigned int a = (unsigned int)3900000000;
        unsigned int b = (unsigned int)3800000000;
        
//        a^=b;
//
//        b^=a;
//
//        a^=b;
        
        swapIntegers(&a,&b);
        
        NSLog(@"%u %u", a, b);
    }
    
    return 0;
}

void swapIntegers(unsigned int *a, unsigned int *b) {
    
    *a ^= *b;
    *b ^= *a;
    *a ^= *b;
    
}

