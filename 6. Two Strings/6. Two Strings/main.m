//
//  main.m
//  6. Two Strings
//
//  Created by Aditya Narayan on 11/18/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        char str[50] = {0};
        char str2[50] = {0};
        
        NSLog(@"Please provide a string: ");
        fgets(str, sizeof(str), stdin);
        if (str[strlen(str - 1)] == '\n') {
            str[strlen(str - 1)] = '\0';
        }
        
        NSLog(@"Please enter another string: ");
        fgets(str2, sizeof(str2), stdin);
        if (str2[strlen(str2 - 1)] == '\n') {
            str2[strlen(str2 - 1)] = '\0';
        }
        
        NSString *stringOne = [NSString stringWithUTF8String:str];
        NSString *stringTwo = [NSString stringWithUTF8String:str2];
        
        if ([stringOne isEqualToString:stringTwo]) {
            NSLog(@"Both strings are equal");
        } else {
            NSLog(@"Strings are not equal");
        }
        
    }
    return 0;
}

