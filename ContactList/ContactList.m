//
//  ContactList.m
//  ContactList
//
//  Created by Larry Luk on 2017-10-31.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactStorage = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact {
    [self.contactStorage addObject:newContact];
}

- (void) printContacts {
    for (Contact* contact in self.contactStorage) {
        NSLog(@"\n%lu: <%@> (%@)", [self.contactStorage indexOfObject:contact], contact.name, contact.email);
    }
}

@end
