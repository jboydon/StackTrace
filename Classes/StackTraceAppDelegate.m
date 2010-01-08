//
//  StackTraceAppDelegate.m
//  StackTrace
//
//

#import "StackTraceAppDelegate.h"
#import "StackTraceViewController.h"

@implementation StackTraceAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	
	NSArray *array = [[NSArray alloc] init];
	[array objectAtIndex:10];
	
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
