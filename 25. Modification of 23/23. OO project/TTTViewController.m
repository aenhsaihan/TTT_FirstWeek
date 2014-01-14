//
//  TTTViewController.m
//  23. OO project
//
//  Created by Aditya Narayan on 11/20/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import "TTTViewController.h"
#import "AddressBook.h"
#import "SimpleHashTable.h"

@interface TTTViewController ()

@end

@implementation TTTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *filePath = @"/Users/aditya/Desktop/addresses";
    
    NSURL *url = [NSURL fileURLWithPath:filePath];
    
    NSError *errorInfo;
    
    NSString *fileContents = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:&errorInfo];
    
    if (!fileContents) {
        NSLog(@"%@", [errorInfo localizedFailureReason]);
    }
    
    NSArray *addresses = [fileContents componentsSeparatedByString:@"\n"];
    
    if ([addresses[0] isEqual: @""]) {
        NSLog(@"File is empty, quitting application...");
        exit(0);
    }
   
    int i,j;
    
    //Object names get overwritten during a loop, but their allocation in the memory does not!
    
    NSMutableArray * contactList = [[NSMutableArray alloc] init];
    
    for (i=0; i < [addresses count]; i++) {
        
        NSArray *nameWithAddress = [addresses[i] componentsSeparatedByString:@":"];
        
        AddressBook *ithContact = [[AddressBook alloc] init];
        
        [contactList addObject:ithContact];  //Here you are pushing each new object allocation to an array outside of the loop

        
        for (j=0; j < ([nameWithAddress count] - 1); j++) {
         
            [ithContact setName:nameWithAddress[j]];
           
            [ithContact setAddress:nameWithAddress[j + 1]];
            
        }
        
    }
    
    
    
    SimpleHashTable *contactsDictionary = [[SimpleHashTable alloc] init];
    
    SimpleHashTable *duplicateAddresses = [[SimpleHashTable alloc] init];
    
    for (int k=0; k< contactList.count; k++) {
        
        if ([contactsDictionary getObjectForKey:[contactList[k] getName]] == nil) {
            [contactsDictionary addObject:contactList[k] forKey:[contactList[k] getName]];
        } else {
            [duplicateAddresses addObject:contactList[k] forKey:[contactList[k] getName]];
        }
        
    }
    
    for (int l=0; l < [contactsDictionary getCount]; l++) {
        NSLog(@"%@", [[contactsDictionary getObjectForKey:[contactList[l] getName]] getDetails]);
    }

    /* the above code replaces this code
    for (id contactKey in contactsDictionary) {
        NSLog(@"%@",[[contactsDictionary getObjectForKey:contactKey]  getDetails]);
    }
     */
    
    
    if ([duplicateAddresses getCount] > 0) {
        NSLog(@"The following contact details could not be added due to the fact they were duplicates:");
        
        for (int m=0; m < [duplicateAddresses getCount]; m++) {
            NSLog(@"%@", [[duplicateAddresses getObjectForKey:[contactList[m] getName]] getDetails]);
        }
        
        /*
        for (id duplicateKey in duplicateAddresses) {
            NSLog(@"%@",[[duplicateAddresses getObjectForKey:duplicateKey] getDetails]);
        }
         */
    }
    
    
    
    /*
    NSMutableDictionary *addressbook = [[NSMutableDictionary alloc] init];
    
    int i;
    
    for (i=0; i < ([namesAndAddresses count] - 1); i++) {
        [addressbook setObject:[namesAndAddresses objectAtIndex:i] forKey:[namesAndAddresses objectAtIndex:i+1]];
    }
     */
    
    
    /*
    AddressBook *contact = [[AddressBook alloc] init];
                            [contact setName:@"Anar Enhsaihan"];
                            [contact setAddress:@"625 Main St. Apt. 1333"];
                            

    
    AddressBook *secondContact = [[AddressBook alloc] init];
    [secondContact setName:@"Tulga Enhsaihan"];
    [secondContact setAddress:@"10-63 Jackson Avenue, LIC, NY 11101"];

    [contact contactDetails];
    [secondContact contactDetails];
    */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
