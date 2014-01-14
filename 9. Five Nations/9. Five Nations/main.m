//
//  main.m
//  9. Five Nations
//
//  Created by Aditya Narayan on 11/18/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int i;
        
        char delimiter = ',';
        
        NSString *string = @"USA,Canada,Mexico,Bermuda,Grenada,Belize";
        
        NSMutableArray *indices = [[NSMutableArray alloc] init];
        
        NSMutableArray *nations = [[NSMutableArray alloc] init];
        
        
        
        
        for (i=0;i < [string length];i++) {
            if ([string characterAtIndex:i] == delimiter) {
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
        
        
        NSLog(@"%@", nations);
        
        
 
        
        
    }
    return 0;
}

