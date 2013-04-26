//
//  AppController.h
//  Flected
//
//  Created by Jeff Ganyard on 11/1/06.
//  Copyright 2006 Bithaus. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface AppController : NSObject
{
	IBOutlet NSImageView *sourceImageView;
	IBOutlet NSImageView *flectedImageView;
	IBOutlet NSTextField *reflectVal;
}

- (IBAction)adjustReflection:(id)sender;

@end
