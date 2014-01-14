//
//  main.m
//  22. Bubble sort
//
//  Created by Aditya Narayan on 11/20/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int i;
        
        BOOL sorted = NO;
        
        NSMutableArray *bubbleSort = [@[@66,@7,@7,@2,@9,@6,@5,@8,@4,@1,@3,@56] mutableCopy];
        
        while (!sorted) {
            sorted = YES;
            
            for (i=0; i < ([bubbleSort count] - 1); i++) {
                if (bubbleSort[i] > bubbleSort[i + 1]) {
                    NSNumber *temp;
                    temp = bubbleSort[i];
                    bubbleSort[i] = bubbleSort[i + 1];
                    bubbleSort[i + 1] = temp;
                    sorted = NO;
                }
            }
        }
        
        NSLog(@"%@", bubbleSort);
    }
    return 0;
}

