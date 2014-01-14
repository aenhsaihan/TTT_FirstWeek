/* 1 */

//
//  main.m
//  12. Read a file and store
//
//  Created by Aditya Narayan on 11/18/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

/*
 2
 This is just for testing purposes of exercise number 13
 
 */

/* 3
 */

/*4 */


/*5
 
 This is just for testing purposes of exercise number 13
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSURL *fileURL = [NSURL fileURLWithPath:@"Users/Aditya/Documents/Anar/Prepwork II/12. Read a file and store/exercise12.rtf"];
        
        NSString *fileContent = [NSString stringWithContentsOfURL:fileURL encoding:NSUTF8StringEncoding error:nil];
        
        NSLog(@"%@", fileContent);
        
    }
    
    return 0;
}

/*6
 
 This is just for testing purposes of exercise number 13
 
 */

/* 7 Another comment to test for purposes of number 13*/


/* 8
 
 This is just for testing purposes of exercise number 13
 
*/

/* 9 One of these as well*/


