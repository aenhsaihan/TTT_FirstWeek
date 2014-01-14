//
//  AddressBook.m
//  23. OO project
//
//  Created by Aditya Narayan on 11/20/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

-(void) setName:(NSString *) firstAndLastName {
    name = firstAndLastName;
}
-(void) setAddress:(NSString *) domicile {
    address = domicile;
}
-(NSString *) getDetails {
    NSString *details = [NSString stringWithFormat:@"%@: %@\n", name, address];
    return details;
}
-(NSString *) getName {
    return name;
}

@end
