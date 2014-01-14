//
//  main.m
//  16. Calculate nth power of an integer
//
//  Created by Aditya Narayan on 11/19/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int base=3, exponent=2, result=1;
        
       
        for (exponent; exponent > 0; exponent--) {
            result *= base;
        }
        
        NSLog(@"%d", result);
    }
    return 0;
}

