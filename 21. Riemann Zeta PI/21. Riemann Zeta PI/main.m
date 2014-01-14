//
//  main.m
//  21. Riemann Zeta PI
//
//  Created by Aditya Narayan on 11/19/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

float factorial(int x);

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        float S = 3.141393;
        int N = 1;
        float result;
        
        
        while (result <= S) {
            result = sqrtf(6*factorial(N));
            N++;
            NSLog(@"result is %f", result);
        }
        
        NSLog(@"N is equal to %d", N);
        
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

