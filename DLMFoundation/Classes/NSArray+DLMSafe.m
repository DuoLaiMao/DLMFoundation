//
//  NSArray+DLMSafe.m
//  DLMFoundation
//
//  Created by YangJian on 2015/12/12.
//

#import "NSArray+DLMSafe.h"

@implementation NSArray (DLMSafe)
- (id)dlm_objectAtIndex:(NSUInteger)index
{
    if (index < self.count) {
        return [self objectAtIndex:index];
    }
    
    return nil;
}
@end

@implementation NSMutableArray (DLMSafe)

- (void)dlm_addObjectNonNil:(id)object
{
    if (object) {
        [self addObject:object];
    }
}

- (void)dlm_removeObjectAtIndex:(NSUInteger)index
{
    if (index < self.count) {
        [self removeObjectAtIndex:index];
    }
}

- (void)dlm_insertObjectNonNil:(id)object atIndex:(NSUInteger)index
{
    if (object && index <= self.count) {
        [self insertObject:object atIndex:index];
    }
}

- (void)dlm_replaceObjectAtIndex:(NSUInteger)index withObjectNonNil:(id)object
{
    if (object && index < self.count) {
        [self replaceObjectAtIndex:index withObject:object];
    }
}

@end

