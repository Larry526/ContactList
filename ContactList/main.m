//
//  main.m
//  ContactList
//
//  Created by Larry Luk on 2017-10-31.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        bool run = YES;
        
        ContactList *contactList = [[ContactList alloc]init];
        
        
        
        while (run == YES) {
            
            
            InputCollector *inputCollector = [[InputCollector alloc]init];
            Contact *contact = [[Contact alloc]init];
            
            
            NSString *optionInput = [inputCollector inputForPrompt:@"The menu: \nWhat would you like do next? \nnew - Create a new contact \nlist - List all contacts \nquit - Exit Application\nSelect an option: "];
            
            if ([optionInput  isEqualToString: @"quit"]) {
                run = NO;
            } else if ([optionInput isEqualToString: @"new"]) {
                contact.name = [inputCollector inputForPrompt:@"Please enter full name."];
                contact.email = [inputCollector inputForPrompt:@"Please enter e-mail."];
                [contactList addContact:contact];
                //NSLog(@"%@", contactList.contactStorage[0].name);
                
                
            } else if ([optionInput isEqualToString: @"list"]){
                
                [contactList printContacts];
                
                
            }
        }
    }
    return 0;
}
