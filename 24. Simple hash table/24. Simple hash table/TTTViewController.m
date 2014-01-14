//
//  TTTViewController.m
//  24. Simple hash table
//
//  Created by Aditya Narayan on 11/21/13.
//  Copyright (c) 2013 TurnToTech. All rights reserved.
//

#import "TTTViewController.h"
#import "SimpleHashTable.h"

@interface TTTViewController ()

@end

@implementation TTTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    SimpleHashTable *dict = [[SimpleHashTable alloc] init];

    
    [dict addObject:@"Yankees" forKey:@"New York"];
    [dict addObject:@"Red Sox" forKey:@"Boston"];
    [dict addObject:@"Orioles" forKey:@"Baltimore"];
    [dict addObject:@"Blue Jays" forKey:@"Toronto"];
    
    NSLog(@"%@", [dict getObjectForKey:@"Toronto"]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
