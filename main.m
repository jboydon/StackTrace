//
//  main.m
//  StackTrace
//
//

#import <UIKit/UIKit.h>

#if TARGET_IPHONE_SIMULATOR
#import "NSDebug.h"
#import "GTMStackTrace.h"

void exceptionHandler(NSException *exception) 
{
	NSLog(@"%@", GTMStackTraceFromException(exception));
}
#endif

int main(int argc, char *argv[]) 
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

#if TARGET_IPHONE_SIMULATOR
	NSLog(@"GTM Debug enabled");	
	NSDebugEnabled = YES;
	NSZombieEnabled = YES;
	NSDeallocateZombies = NO;
	NSHangOnUncaughtException = YES;
	[NSAutoreleasePool enableFreedObjectCheck:YES];
	NSSetUncaughtExceptionHandler(&exceptionHandler);
#endif	
	
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
