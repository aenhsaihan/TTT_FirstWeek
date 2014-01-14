//
//  AddressBook.h
//  23. OO project
//
//  Created by Aditya Narayan on 11/20/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressBook : NSObject {
    NSString *name;
    NSString *address;
}

-(void) setName:(NSString *) firstAndLastName;
-(void) setAddress:(NSString *) domicile;
-(NSString *) getDetails;
-(NSString *) getName;
@end
