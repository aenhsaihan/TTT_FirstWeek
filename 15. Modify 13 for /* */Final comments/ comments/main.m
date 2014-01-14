//
//  main.m
//   comments
//
//  Created by Aditya Narayan on 11/19/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int i, j, comments = 0;
        
        NSError *errorInfo;
        
        NSString *filePath = @"/Users/aditya/Documents/Anar/Prepwork II/12. Read a file and store/12. Read a file and store/main.m";
        
        NSURL *url = [NSURL fileURLWithPath:filePath];
        
        NSString *fileContents = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&errorInfo];
        
        
        /*
         1. Split the file on a newline
         2. Look through each line for an opening comment
            -If you find another opening comment, break the loop
            -If you find a closing comment instead, break the loop
         3. Once opening comment is found, then begin looking for closing comment
            -If no closing comment is not found, break the loop
         4. Once closing comment is found, increase comment count by one
         */
         
        if (!fileContents) {
            NSLog(@"%@",[errorInfo localizedDescription]);
        } 
        
        NSArray *lines = [fileContents componentsSeparatedByString:@"\n"];
        
        

        BOOL openingComment = NO;
        BOOL closingComment = NO;
        
        for (i=0; i < [lines count]; i++) {
            
            NSString *currentLine = lines[i];
            
            if ([currentLine length] < 2) {
                continue;
            }
            
            
            for (j=0; j < ([lines[i] length] - 1); j++) {

                
                BOOL openingCommentBlockIsFound = (([currentLine characterAtIndex:j] == '/') && ([currentLine characterAtIndex:j+1] == '*'));
                BOOL closingCommentBlockIsFound = (([currentLine characterAtIndex:j] == '*') && ([currentLine characterAtIndex:j+1] == '/'));
                
                if (!openingCommentBlockIsFound && !closingCommentBlockIsFound) {
                    continue;
                } else if (!openingComment && closingCommentBlockIsFound) {
                    NSLog(@"File is invalid: opening comment was not found");
                    exit(0);
                } else if (openingCommentBlockIsFound && closingCommentBlockIsFound) {
                    comments++;
                    openingCommentBlockIsFound = NO;
                    closingCommentBlockIsFound = NO;
                } else if (openingCommentBlockIsFound) {
                    if (openingComment) {
                        NSLog(@"File is invalid: two opening comment blocks found in sequence");
                        exit(0);
                    } else {
                        openingComment = YES;
                    }
                } else if (closingCommentBlockIsFound) {
                    closingComment = YES;
                    
                    if (openingComment && closingComment) {
                        comments++;
                        openingComment = NO;
                        closingComment = NO;
                    }
                }
            }
        }
        
        if (openingComment && !closingComment) {
            NSLog(@"File is invalid: there is no closing comment");
            exit(0);
        }
        
        NSLog(@"There are %d comments in your program", comments);
        
        
        
        /*
            for (i=0; i < ([fileContents length] - 1); i++) {
               // if ((([fileContents characterAtIndex:i] == '/') && ([fileContents characterAtIndex:i+1] == '*')) || (([fileContents characterAtIndex:i] == '*') && ([fileContents characterAtIndex:i+1] == '/'))) {
                
                BOOL foundStart = (([fileContents characterAtIndex:i] == '/') && ([fileContents characterAtIndex:i+1] == '*')) ;
               
                BOOL foundEnd = (([fileContents characterAtIndex:i] == '*') && ([fileContents characterAtIndex:i+1] == '/'));
                
                if (foundStart||foundEnd ) {
                
                    blocks++;
                    if (blocks == 2) {
                        comments++;
                        blocks = 0;
                    } else {
                        NSLog(@"No matching comment block was found");
                    }
                }
            }
            
            NSLog(@"There are %i comments in your code", comments);
         */
            
            /*
             NSArray *lines = [fileContents componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n"]]; //expecting just a string, so split on only one character
             
             NSLog(@"There are %lu lines in your program", lines.count);
             */
        
        
    }
    return 0;
}

