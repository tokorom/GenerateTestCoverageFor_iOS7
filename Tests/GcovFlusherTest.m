//
//  GcovFlusherTest.m
//
//  Created by ToKoRo on 2014-01-01.
//

#import <XCTest/XCTest.h>
#import "TKRGcovFlusher.h"

@interface TKRGcovFlusher ()
+ (void)updateTestObserverClassName:(NSString*)className;
@end

@interface GcovFlusherTest : XCTestCase
@end 

@implementation GcovFlusherTest

- (void)testUpdateTestObserver
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"XCTestLog" forKey:XCTestObserverClassKey];
    [defaults synchronize];

    [TKRGcovFlusher updateTestObserverClassName:@"TKRGcovFluserTestObserver"];
    NSString *currentObserverString = [defaults stringForKey:XCTestObserverClassKey];
    NSArray *currentObservers = [currentObserverString componentsSeparatedByString:@","];
    
    XCTAssertTrue([currentObservers containsObject:@"TKRGcovFluserTestObserver"]);

    NSUInteger beforeCount = currentObservers.count;
    [TKRGcovFlusher updateTestObserverClassName:@"TKRGcovFluserTestObserver"];
    currentObserverString = [defaults stringForKey:XCTestObserverClassKey];
    currentObservers = [currentObserverString componentsSeparatedByString:@","];

    XCTAssertEqual(currentObservers.count, beforeCount);

    beforeCount = currentObservers.count;
    [TKRGcovFlusher updateTestObserverClassName:@"XXXObserver"];
    currentObserverString = [defaults stringForKey:XCTestObserverClassKey];
    currentObservers = [currentObserverString componentsSeparatedByString:@","];

    XCTAssertEqual(currentObservers.count, beforeCount + 1);
}

@end
