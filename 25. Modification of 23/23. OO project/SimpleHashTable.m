//
//  SimpleHashTable.m
//  24. Simple hash table
//
//  Created by Aditya Narayan on 11/21/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import "SimpleHashTable.h"
#import "Elements.h"

@implementation SimpleHashTable


-(void) addObject:(id) obj forKey:(id) key; {
    
    if(!kvObjects) {
        kvObjects = [[NSMutableArray alloc]init];
    }
    
    Elements *e = [[Elements alloc] init];
    
    
    
    e.key = key;
    e.value = obj;
    
    
    
    [kvObjects addObject:e];
    
}
-(id) getObjectForKey:(id) key; {
    //TO DO: learn why casting is needed!
    
    for (int i=0; i < [kvObjects count]; i++) {
        
        Elements *elementObj = kvObjects[i];
        
        if ([[elementObj getKey] isEqual:key]) {
            return [elementObj getValue];
        }
    }
    
    return Nil;
}

-(int)getCount {
    
//    int total = 0;
//    
//    for (int i=0; i < [kvObjects count]; i++) {
//        
//        total++;
//    }
//    
//    return total;
    
    return [kvObjects count] ;
    
}

@end

