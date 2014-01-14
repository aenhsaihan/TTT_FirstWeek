//
//  SimpleHashTable.h
//  24. Simple hash table
//
//  Created by Aditya Narayan on 11/21/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SimpleHashTable : NSObject {
    NSMutableArray *kvObjects;
}



-(void) addObject:(id) obj forKey:(id) key;
-(id) getObjectForKey:(id) key;

-(int)getCount;

@end
