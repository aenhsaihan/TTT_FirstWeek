//
//  main.m
//  7. This is a test
//
//  Created by Aditya Narayan on 11/18/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int i;
        BOOL found = NO;
        
        NSString *str = @"This is a test";
        
        NSMutableArray *characters = [[NSMutableArray alloc] init];
        
        for (i=0;i < [str length];i++) {
            NSString *character = [NSString stringWithFormat:@"%c", [str characterAtIndex:i]];
            [characters addObject:character];
        }
        
        for  (i=0;i < [characters count] - 1;i++) {
            if ([characters[i] isEqual: @"t"] && [characters[i + 1] isEqual:@"e"]) {
                found = YES;
                break;
            } 
        }
        
        
        if (found) {
            NSUInteger idx = i;
        
            [characters replaceObjectAtIndex:idx withObject:@"g"];
            [characters replaceObjectAtIndex:idx+1 withObject:@"h"];
            [characters insertObject:@"o" atIndex:idx+2];
        
            NSString *replacedString = [characters componentsJoinedByString:@""];
        
            NSLog(@"%@", replacedString);
        } else {
            NSLog(@"%@", str);
        }


    }
    return 0;
}

