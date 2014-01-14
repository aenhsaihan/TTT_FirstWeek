//
//  main.m
//  17. Tenth power of 2 billion
//
//  Created by Aditya Narayan on 11/19/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        long double base=2000000000, exponent=10, result=1;
        
        
        for (exponent; exponent > 0; exponent--) {
            result *= base;
        }
        
        NSLog(@"%Lf", result);
        
    }
    return 0;
}

//9,223,372,036,854,775,807