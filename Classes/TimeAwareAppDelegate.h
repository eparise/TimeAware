//
//  TimeAwareAppDelegate.h
//  TimeAware
//
//  Created by John Nichols on 9/8/10.
//  Copyright N/A 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeAwareAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
