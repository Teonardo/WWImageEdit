//
//  KKImageEditorTheme.m
//  WWImageEdit
//
//  Created by 邬维 on 2017/1/10.
//  Copyright © 2017年 kook. All rights reserved.
//

#import "KKImageEditorTheme.h"

@implementation KKImageEditorTheme

static KKImageEditorTheme *_sharedInstance = nil;

+ (KKImageEditorTheme*)theme
{
    static dispatch_once_t  onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[KKImageEditorTheme alloc] init];
    });
    return _sharedInstance;
}

+ (id)allocWithZone:(NSZone *)zone
{
    @synchronized(self) {
        if (_sharedInstance == nil) {
            _sharedInstance = [super allocWithZone:zone];
            return _sharedInstance;
        }
    }
    return nil;
}

- (id)copyWithZone:(NSZone *)zone
{
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        
        self.backgroundColor                = [UIColor whiteColor];
        self.toolbarColor                   = [[UIColor blackColor] colorWithAlphaComponent:0.7];;
        self.toolIconColor                  = @"black";
        self.toolbarTextColor               = [UIColor blackColor];
        self.toolbarSelectedButtonColor     = [[UIColor cyanColor] colorWithAlphaComponent:0.2];
        self.toolbarTextFont                = [UIFont systemFontOfSize:10];
        self.statusBarStyle                 = UIStatusBarStyleDefault;
    }
    return self;
}

@end