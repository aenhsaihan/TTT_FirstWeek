//
//  main.m
//  10. Comma, space, period
//
//  Created by Aditya Narayan on 11/18/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int i;
        
        NSArray *delimiter = @[@",",@".",@"|",@" "];
        
        NSString *string = @"USA.Canada,Mexico, :|Bermuda Grenada,Belize";
        
        NSMutableArray *indices = [[NSMutableArray alloc] init];
        
        NSMutableArray *nations = [[NSMutableArray alloc] init];
        
        
        //([string characterAtIndex:i] == ',') || ([string characterAtIndex:i] == '.') || ([string characterAtIndex:i] == ' ')
        
        for (i=0;i < [string length];i++) {
            if ([delimiter containsObject:[NSString stringWithFormat:@"%c",[string characterAtIndex:i]]]) {
                NSNumber *num = [[NSNumber alloc] initWithInt:i];
                [indices addObject:num];
            } else if (i == 0) {
                NSNumber *num = [[NSNumber alloc] initWithInt:i];
                [indices addObject:num];
            } else if (i == [string length] - 1) {
                NSNumber *num = [[NSNumber alloc] initWithInt:i];
                [indices addObject:num];
            }
        }
        
        
        
        
        for (i=0;i < ([indices count] - 1);i++) {
            
            if (i == 0) {
                NSRange firstRange = NSMakeRange([indices[i] integerValue], [indices[i + 1] integerValue]);
                
                [nations addObject:[string substringWithRange:firstRange]];
            } else if (i == ([indices count] - 2)) {
                NSRange range = NSMakeRange(([indices[i] integerValue] + 1),([indices[i+1] integerValue] - [indices[i] integerValue]));
                
                [nations addObject:[string substringWithRange:range]];
            }
            else {
                NSRange range = NSMakeRange(([indices[i] integerValue] + 1),([indices[i+1] integerValue] - [indices[i] integerValue] - 1));
                
                [nations addObject:[string substringWithRange:range]];
            }
            
            
        }
        
        for (int k=0; k< nations.count; k++) {

                    NSLog(@"%@", nations[k]);
            
        }

        
    }
    return 0;
}

