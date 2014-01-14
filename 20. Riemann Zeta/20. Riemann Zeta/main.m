//
//  main.m
//  20. Riemann Zeta
//
//  Created by Aditya Narayan on 11/19/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

float factorial(int x);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        float S;
        
        //S = √ (6*( 1+1/2^2+1/3^2 +1/4^2 + 1/5^2 + … ) )
        S = sqrtf(6*factorial(10000000));
        
        NSLog(@"%f", S);
        
    }
    return 0;
}

float factorial(int x) {
    float i;
    float result = 0;
    
    for (i=1; i <= x; i++) {
        result += (1 / (i * i));
    }
    return result;
}