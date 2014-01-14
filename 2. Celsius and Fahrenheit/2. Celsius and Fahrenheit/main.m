//
//  main.m
//  2. Celsius and Fahrenheit
//
//  Created by Aditya Narayan on 11/18/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int i;
        
        
        for (i = -40; i < 101; i++) {
            printf("%i : %i\n", i, ((i - 32) * 5/9));
            
        }
    
        
    }
    return 0;
}

