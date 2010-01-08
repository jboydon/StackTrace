//
//  StackTraceAppDelegate.h
//  StackTrace
//
//

#import <UIKit/UIKit.h>

@class StackTraceViewController;

@interface StackTraceAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    StackTraceViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet StackTraceViewController *viewController;

@end

