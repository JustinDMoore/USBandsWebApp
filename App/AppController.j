/*
 * AppController.j
 * NewApplication
 *
 * Created by You on April 1, 2016.
 * Copyright 2016, Your Company All rights reserved.
 */

@import <Foundation/Foundation.j>
@import <AppKit/AppKit.j>

@implementation AppController : CPObject
{
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];

	[contentView setBackgroundColor:[CPColor blackColor]];

    [theWindow orderFront:self];

    // Uncomment the following line to turn on the standard menu bar.
    //[CPMenu setMenuBarVisible:YES];
    
    var HUDPanel = [[CPPanel alloc]
    initWithContentRect:CGRectMake(0, 0, 225, 125)
    styleMask:CPHUDBackgroundWindowMask | CPClosableWindowMask];

	[HUDPanel setFloatingPanel:YES];

	[HUDPanel orderFront:self];
}

@end
