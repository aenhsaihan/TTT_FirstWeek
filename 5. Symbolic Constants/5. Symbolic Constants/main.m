//
//  main.m
//  5. Symbolic Constants
//
//  Created by Aditya Narayan on 11/18/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>
#define MAX_F 100
#define MIN_F -41

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int i = 0;

        
        printf("Fahrenheit : Celsius\n");
        
        for (i = MAX_F; i > MIN_F; i--) {
            printf("    %i    :   %i\n", i, (i - 32) * 5/9);
        }
    
    }
    return 0;
}

