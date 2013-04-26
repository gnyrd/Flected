//
//  AppController.m
//  Flected
//
//  Created by Jeff Ganyard on 11/1/06.
//  Copyright 2006 Bithaus. All rights reserved.
//

#import "AppController.h"
#import "NSImage+BHReflectedImage.h"


@implementation AppController

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)app
{
    return YES;
}

- (void)awakeFromNib
{
	NSImage *image = [NSImage imageNamed:@"bithaus_logo"];
	[sourceImageView setImage:image];
	[self adjustReflection:nil];
}

- (void)dealloc
{
	[super dealloc];
}

- (IBAction)adjustReflection:(id)sender
{
    float amount;
    if (!sender) {
        amount = 0.0;
    } else {
        amount = [sender floatValue];
    }
	NSImage *resultImage = [NSImage reflectedImage:[sourceImageView image] amountReflected:amount];
	[flectedImageView setImage:resultImage];
	[reflectVal setStringValue:[NSString stringWithFormat:@"%f", amount]];
}

@end
