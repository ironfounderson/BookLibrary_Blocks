//
//  Book.h
//  BookLibrary_Blocks
//
//  Created by Robert Höglund on 11/3/10.
//  Copyright 2010 rhoglund coding. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface Book :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * author;

@end



