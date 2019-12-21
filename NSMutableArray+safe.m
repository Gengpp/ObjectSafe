//
//  NSMutableArray+safe.m
//  MethodSwizzling
//
//  Created by JackMan on 2019/12/21.
//  Copyright © 2019 JackMan. All rights reserved.
//

#import "NSMutableArray+safe.h"
#import<objc/runtime.h>

@implementation NSMutableArray (safe)
+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        id obj = [[self alloc] init];
    });
}
- (void)swizzleMethod:(SEL)origSelector withMethod:(SEL)newSelector
{
    Class class = [self class];
    
    Method originalMethod = class_getInstanceMethod(class, origSelector);
    Method swizzledMethod = class_getInstanceMethod(class, newSelector);
    
    BOOL didAddMethod = class_addMethod(class,
                                        origSelector,
                                        method_getImplementation(swizzledMethod),
                                        method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        class_replaceMethod(class,
                            newSelector,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}
@end
