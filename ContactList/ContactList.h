//
//  ContactList.h
//  ContactList
//
//  Created by Larry Luk on 2017-10-31.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"


@interface ContactList : NSObject

@property (nonatomic) NSMutableArray<Contact*> *contactStorage;

- (void)addContact:(Contact *)newContact;
- (void) printContacts;

@end
