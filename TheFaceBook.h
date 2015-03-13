//
//  theFaceBook.h
//  ContactList
//
//  Created by Jeffrey C Rosenthal on 3/12/15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@interface TheFaceBook : NSObject
@property (strong, nonatomic)NSMutableArray *theFaceBook;
-(instancetype)initWithFaceBook;
-(void)addToFaceBook:(Contact *)newFace;
-(void)listTheFaces;


@end
