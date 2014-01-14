//
//  main.m
//  14. Modify 11
//
//  Created by Aditya Narayan on 11/19/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int i;
        
        int total = 0;
        
        NSError *errorInfo;
        
        NSString *filePath = @"/Users/aditya/Documents/Anar/Prepwork II/12. Read a file and store/12. Read a file and store/main.m";
        
        NSURL *url = [NSURL fileURLWithPath:filePath];
        
        NSString *fileContents = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&errorInfo];
        
        if (!fileContents) {
            NSLog(@"%@",[errorInfo localizedDescription]);
        } else {
            for (i=0; i < ([fileContents length] - 1); i++) {
                if (([fileContents characterAtIndex:i] == '/') && ([fileContents characterAtIndex:i+1] == '/')) {
                    total++;
                }
            }
            
            NSLog(@"There are %i lines in your code", total);
            
            /*
             NSArray *lines = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n"]]; //expecting just a string, so split on only one character
             
             NSLog(@"There are %lu lines in your program", lines.count);
             */
        }
        
    }
    return 0;
}

