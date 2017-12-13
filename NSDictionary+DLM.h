//
//  NSDictionary+DLM.h
//  DLMFoundation
//
//  Created by YangJian on 2015/12/12.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (DLM)

- (int)dlm_intValueForKey:(NSString *)key defaultValue:(int)value;

- (NSInteger)dlm_integerValueForKey:(NSString *)key defaultValue:(NSInteger)value;

- (long)dlm_longValueForKey:(NSString *)key defaultValue:(long)value;

- (float)dlm_floatValueForKey:(NSString *)key defaultValue:(float)value;

- (double)dlm_doubleValueForKey:(NSString *)key defaultValue:(double)value;

- (BOOL)dlm_boolValueForKey:(NSString *)key defaultValue:(BOOL)value;

- (NSString *)dlm_stringValueForKey:(NSString *)key defaultValue:(NSString *)value;

- (NSObject *)dlm_ValueForKey:(NSString *)key defaultValue:(NSObject *)value;

@end
