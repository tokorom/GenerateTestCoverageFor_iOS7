//
//  TKRGcovFluserTestObserver.m
//
//  Created by ToKoRo on 2013-12-05.
//

#import "TKRGcovFluserTestObserver.h"
#import <objc/runtime.h>

@interface UIApplication ()
- (void)gcovFlush;
@end

@implementation TKRGcovFluserTestObserver


+ (void)initialize
{
    [super initialize];
    [self.class addGcovFlushMethodToApplication];
}

//----------------------------------------------------------------------------//
#pragma mark - XCTestObserver
//----------------------------------------------------------------------------//
    
- (void)stopObserving
{
    [super stopObserving];
    UIApplication *application = [UIApplication sharedApplication];
    if ([application respondsToSelector:@selector(gcovFlush)]) {
        [application gcovFlush];
    }
}

//----------------------------------------------------------------------------//
#pragma mark - Private Methods
//----------------------------------------------------------------------------//

+ (void)addGcovFlushMethodToApplication
{
#if defined(USE_GCOV_FLUSH) || !defined(UNUSE_GCOV_FLUSH)
    IMP imp = imp_implementationWithBlock(^{
        extern void __gcov_flush(void);
        __gcov_flush();
    });
    class_addMethod([UIApplication class], @selector(gcovFlush), imp, "v@:");
#endif
}

@end
