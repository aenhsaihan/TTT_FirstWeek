//
//  Elements.m
//  24. Simple hash table
//
//  Created by Aditya Narayan on 11/21/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import "Elements.h"

@implementation Elements

-(void) setKey:(id) keySet {
    key = keySet;
}
-(void) setValue:(id) valueSet {
    value = valueSet;
}

-(id) getKey {
    return key;
}
-(id) getValue {
    return value;
}
@end
