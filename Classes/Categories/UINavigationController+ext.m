//
//  UIViewController+ext.m
//  Hodor
//
//  Created by pengpingguo on 16/5/13.
//  Copyright © 2016年 zhangchutian. All rights reserved.
//

#import "UINavigationController+ext.h"

@implementation  UINavigationController(ext)

- (BOOL)hPopToViewControllerClass:(Class)klass animated:(BOOL)animated
{
    BOOL success = NO;
    if (klass != NULL)
    {
        for (UIViewController *vc in self.viewControllers)
        {
            if ([vc isKindOfClass:klass])
            {
                success = YES;
                [self popToViewController:vc animated:animated];
                break;
            }
        }
    }
    return success;
}

- (BOOL)hPopToViewControllerName:(NSString *)className animated:(BOOL)animated
{
    BOOL success = NO;
    if (className != nil)
    {
        Class klass = NSClassFromString(className);
        for (UIViewController *vc in self.viewControllers)
        {
            if ([vc isKindOfClass:klass])
            {
                success = YES;
                [self popToViewController:vc animated:animated];
                break;
            }
        }
    }
    return success;
}


@end
