//
//  BookViewController.h
//  BookLibrary_Delegate
//
//  Created by Robert Höglund on 11/3/10.
//  Copyright 2010 rhoglund coding. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Book;
@class BookViewController;

typedef void(^BookViewControllerResponse)(BookViewController *controller);

@interface BookViewController : UIViewController {
	UITextField *titleField_;
	UITextField *authorField_;
	Book *book_;
	BookViewControllerResponse cancelBlock_;
	BookViewControllerResponse saveBlock_;
}

@property (nonatomic, retain) IBOutlet UITextField *titleField;
@property (nonatomic, retain) IBOutlet UITextField *authorField;
@property (nonatomic, retain) Book *book;
@property (nonatomic, copy) BookViewControllerResponse cancelBlock;
@property (nonatomic, copy) BookViewControllerResponse saveBlock;

- (IBAction)cancel:(id)sender;
- (IBAction)save:(id)sender;

@end
