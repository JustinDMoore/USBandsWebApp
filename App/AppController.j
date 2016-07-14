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
    var theWindow = [[CPWindow alloc]
                        initWithContentRect:CGRectMakeZero()
                        styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];

    [theWindow orderFront:self];

    var HUDPanel = [[CPPanel alloc]
        initWithContentRect:CGRectMake(0, 0, 225, 125)
        styleMask:CPHUDBackgroundWindowMask | CPClosableWindowMask];

    [HUDPanel setFloatingPanel:YES];

    [HUDPanel orderFront:self];

    [HUDPanel setTitle:"Inspector"];

    var panelContentView = [HUDPanel contentView],
        centerX = (CGRectGetWidth([panelContentView bounds])
        - 135) / 2;

    var scaleSlider = [[CPSlider alloc]
        initWithFrame:CGRectMake(centerX, 13, 135, 24)];

    [scaleSlider setMinValue:50];
    [scaleSlider setMaxValue:150];
    [scaleSlider setValue:100];

    [panelContentView addSubview:scaleSlider];

    var scaleStartLabel = [self labelWithTitle:"50%"],
        scaleEndLabel = [self labelWithTitle:"150%"];

    [scaleStartLabel setFrameOrigin:CGPointMake(centerX -
        CGRectGetWidth([scaleStartLabel frame]), 10)];
    [scaleEndLabel setFrameOrigin:
        CGPointMake(CGRectGetMaxX([scaleSlider frame]), 10)];

    [panelContentView addSubview:scaleStartLabel];
    [panelContentView addSubview:scaleEndLabel];

    rotationSlider = [[CPSlider alloc]
        initWithFrame:CGRectMake(centerX, 43, 135, 24)];

    [rotationSlider setMinValue:0];
    [rotationSlider setMaxValue:360];
    [rotationSlider setValue:0];

    [panelContentView addSubview:rotationSlider];

    var rotationStartLabel = [self labelWithTitle:"0\u00B0"],
        rotationEndLabel = [self labelWithTitle:"360\u00B0"];

    [rotationStartLabel setFrameOrigin:CGPointMake(centerX -
        CGRectGetWidth([rotationStartLabel frame]), 40)];
    [rotationEndLabel setFrameOrigin:
        CGPointMake(CGRectGetMaxX([rotationSlider frame]), 40)];

    [panelContentView addSubview:rotationStartLabel];
    [panelContentView addSubview:rotationEndLabel];
}

- (CPTextField)labelWithTitle:(CPString)aTitle
{
    var label = [[CPTextField alloc] initWithFrame:CGRectMakeZero()];

    [label setStringValue:aTitle];
    [label setTextColor:[CPColor whiteColor]];

    [label sizeToFit];

    return label;
}

@end
