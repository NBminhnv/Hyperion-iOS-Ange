//  Copyright (c) 2017 WillowTree, Inc.

//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "HYPFlexPluginModule.h"
#import "HYPPluginMenuItem.h"
#import "HyperionManager.h"
@import FLEX;

@interface HYPFlexPluginModule () <HYPPluginMenuItemDelegate>

@end

@implementation HYPFlexPluginModule

-(NSString *)pluginMenuItemTitle
{
    return @"FLEX";
}

-(UIImage *)pluginMenuItemImage
{
    // Return a default system image for FLEX
    return [UIImage systemImageNamed:@"wrench.and.screwdriver"];
}

-(BOOL)shouldHideDrawerOnSelection
{
    return YES;
}

-(void)pluginMenuItemSelected:(UIView<HYPPluginMenuItem> *)pluginView
{
    [[HyperionManager sharedInstance] togglePluginDrawer];
    [FLEXManager.sharedManager showExplorer];
    NSLog(@"FLEX plugin selected");
}

@end
