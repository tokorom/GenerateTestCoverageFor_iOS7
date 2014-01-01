//
//  Sample.m
//
//  Created by ToKoRo on 2014-01-01.
//

#import "Sample.h"

@implementation Sample
    
+ (BOOL)sampleClassMethod:(BOOL)flag
{
    BOOL bret;
    if (flag) {
        bret = YES;
    } else {
        bret = NO;
    }
    return bret;
}

- (BOOL)sampleInstanceMethod:(BOOL)flag
{
    BOOL bret;
    if (flag) {
        bret = YES;
    } else {
        bret = NO;
    }
    return bret;
}

@end
