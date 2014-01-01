//
//  SampleTests.m
//
//  Created by ToKoRo on 2014-01-01.
//

#import <XCTest/XCTest.h>
#import "Sample.h"

@interface SampleTests : XCTestCase
@end

@implementation SampleTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testClassMethodYES
{
    BOOL bret = [Sample sampleClassMethod:YES];
    XCTAssertEqual(bret, YES);
}

- (void)testInstanceMethodYES
{
    BOOL bret = [[Sample new] sampleInstanceMethod:YES];
    XCTAssertEqual(bret, YES);
}

@end
