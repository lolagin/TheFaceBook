//
//  main.m
//  ContactList
//
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#import "theFaceBook.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        TheFaceBook *facebook = [[TheFaceBook alloc]initWithFaceBook];
        BOOL isRunning = true;
        
        do {
            char str [100];
            
            NSLog(@"Welcome to the app. What's next?");
            NSLog(@" new      - Create a new contact");
            NSLog(@" list     - List all contacts");
            NSLog(@" quit     - Exit Application");
            NSLog(@"> ");
            scanf("%100s", str);
            // Need to convert input to a NSString
            NSString *nsInput = [[NSString alloc] initWithUTF8String: str];
            NSLog(@"%@", nsInput);
            
            if ([nsInput isEqualToString:@"quit"]) {
                isRunning = false;
                break;
            }
            else if ([nsInput isEqualToString:@"new"]) {
                NSString *email = @"lul@goatse.cx";
                NSString *name = @"harriet the spy";
                Contact *newContact = [Contact createWithName:name email:email];
                [facebook addToFaceBook:newContact];

            }
            else if ([nsInput isEqualToString:@"list"]) {
                [facebook listTheFaces];
            }
            
            
        } while (isRunning);
        if (isRunning == false) {
            NSLog(@"wtf???");
        }
        
        
        return 0;
    }
}
