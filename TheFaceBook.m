//
//  theFaceBook.m
//  ContactList
//
//  Created by Jeffrey C Rosenthal on 3/12/15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "TheFaceBook.h"

@implementation TheFaceBook


-(instancetype)initWithFaceBook {
    self = [super init];
    if (self){
        self.theFaceBook = [[NSMutableArray alloc] init];
    }return self;
}


-(void)addToFaceBook:(Contact *)newFace {
    [self.theFaceBook addObject:newFace];
}
-(void)listTheFaces {
for (Contact *contact in self.theFaceBook) {
    NSLog(@"contact name is %@, and email is %@", contact.name, contact.email);
        }
    };
@end
