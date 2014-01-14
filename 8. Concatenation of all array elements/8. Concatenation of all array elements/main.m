//
//  main.m
//  8. Concatenation of all array elements
//
//  Created by Aditya Narayan on 11/18/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int i, total = 0;
        
        
        NSArray *strings = @[@"Manhattan",@"Queens",@"Bronx",@"Brooklyn",@"Staten Island"];
        
        for (i=0; i < [strings count]; i++) {
            total += [strings[i] length];
        }
        
        NSString *concatenated = [strings componentsJoinedByString:@""];
        
        if ([concatenated length] == total) {
            NSLog(@"%@", concatenated);
        }
        
    }
    return 0;
}

