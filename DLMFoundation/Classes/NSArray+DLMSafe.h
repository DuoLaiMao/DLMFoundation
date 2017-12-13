//
//  NSArray+DLMSafe.h
//  DLMFoundation
//
//  Created by YangJian on 2015/12/12.
//

#import <Foundation/Foundation.h>

#pragma mark - 使用NSArray时，经常发生越界崩溃的问题，使用此方法可有效避免越界崩溃

@interface NSArray (DLMSafe)

- (id)dlm_objectAtIndex:(NSUInteger)index;

@end

@interface NSMutableArray (DLMSafe)

- (void)dlm_addObjectNonNil:(id)object;

- (void)dlm_removeObjectAtIndex:(NSUInteger)index;

- (void)dlm_insertObjectNonNil:(id)object atIndex:(NSUInteger)index;

- (void)dlm_replaceObjectAtIndex:(NSUInteger)index withObjectNonNil:(id)object;

@end
