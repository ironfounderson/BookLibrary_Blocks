    //
//  BookViewController.m
//  BookLibrary_Delegate
//
//  Created by Robert Höglund on 11/3/10.
//  Copyright 2010 rhoglund coding. All rights reserved.
//

#import "BookViewController.h"
#import "Book.h"

@implementation BookViewController

@synthesize titleField = titleField_;
@synthesize authorField = authorField_;
@synthesize book = book_;

- (IBAction)cancel:(id)sender {
	if (cancelBlock_) {
		cancelBlock_(self);
	}
}

- (IBAction)save:(id)sender {
	self.book.title = self.titleField.text;
	self.book.author = self.authorField.text;
	if (saveBlock_) {
		saveBlock_(self);
	}
}

- (void)setCancelBlock:(BookViewControllerResponse)cancelBlock {
	cancelBlock_ = Block_copy(cancelBlock);
}

- (void)setSaveBlock:(BookViewControllerResponse)saveBlock {
	saveBlock_ = Block_copy(saveBlock);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    self.titleField = nil;
	self.authorField = nil;
}

- (void)dealloc {
	[titleField_ release];
	[authorField_ release];
	[book_ release];
	Block_release(cancelBlock_);
	Block_release(saveBlock_);
	[super dealloc];
}


@end
