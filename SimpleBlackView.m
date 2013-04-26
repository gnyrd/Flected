//
//  SimpleBlackView.m
//  Flected
//
//  Created by Jeff Ganyard on 11/1/06.
//  Copyright 2006 Bithaus. All rights reserved.
//

#import "SimpleBlackView.h"


@implementation SimpleBlackView

- (void)drawRect:(NSRect)rect 
{
	[[NSColor whiteColor] set];
//	[[NSColor blackColor] set];
	NSRectFill(rect);
}

@end
