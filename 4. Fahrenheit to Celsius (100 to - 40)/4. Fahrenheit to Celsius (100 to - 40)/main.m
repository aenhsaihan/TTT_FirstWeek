//
//  main.m
//  4. Fahrenheit to Celsius (100 to - 40)
//
//  Created by Aditya Narayan on 11/18/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int i, celsiusConversion, fahrenheitDigits, paddingAccordingToNumberLength;
        
        NSLog(@"Fahrenheit : Celsius\n");

        
        for (i = 1000; i > -1000; i--) {
            
            NSString *fahrenheitDigitsString = [NSString stringWithFormat:@"%d",i];
            
            fahrenheitDigits = (int) [fahrenheitDigitsString length];
            
            NSString *space = @" ";
            
            NSMutableString *padding = [NSMutableString stringWithCapacity:[space length]];
            
            if (fahrenheitDigits == 4) {
                paddingAccordingToNumberLength = 3;
            } else if (fahrenheitDigits == 3) {
                paddingAccordingToNumberLength = 4;
            } else if (fahrenheitDigits == 2) {
                paddingAccordingToNumberLength = 5;
            } else if (fahrenheitDigits == 1) {
                paddingAccordingToNumberLength = 6;
            }
            
            for (int k = 0; k < paddingAccordingToNumberLength; k++) {
                [padding appendString:space];
            }
            
            celsiusConversion = ((i - 32) * 5/9);
            NSString *result = [NSString stringWithFormat:@"%@%d    :   %d\n", padding, i, celsiusConversion];
            
            
            NSLog(@"%@", result);
            
            //printf("    %d    :   %d\n", i, celsiusConversion);
        }
        
    }
    return 0;
}

