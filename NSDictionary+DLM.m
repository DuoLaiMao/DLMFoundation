//
//  NSDictionary+DLM.m
//  DLMFoundation
//
//  Created by YangJian on 2015/12/12.
//

#import "NSDictionary+DLM.h"

@implementation NSDictionary (DLM)

- (int)dlm_intValueForKey:(NSString *)key defaultValue:(int)defaultValue;
{
    id value = [self objectForKey:key];
    return [value respondsToSelector:@selector(intValue)] ? [value intValue] : defaultValue;
}

- (NSInteger)dlm_integerValueForKey:(NSString *)key defaultValue:(NSInteger)defaultValue;
{
    id value = [self objectForKey:key];
    return [value respondsToSelector:@selector(integerValue)] ? [value integerValue] : defaultValue;
}

- (long)dlm_longValueForKey:(NSString *)key defaultValue:(long)defaultValue;
{
    id value = [self objectForKey:key];
    return [value respondsToSelector:@selector(longValue)] ? [value longValue] : defaultValue;
}

- (float)dlm_floatValueForKey:(NSString *)key defaultValue:(float)defaultValue;
{
    id value = [self objectForKey:key];
    return [value respondsToSelector:@selector(floatValue)] ? [value floatValue] : defaultValue;
}

- (double)dlm_doubleValueForKey:(NSString *)key defaultValue:(double)defaultValue;
{
    id value = [self objectForKey:key];
    return [value respondsToSelector:@selector(doubleValue)] ? [value doubleValue] : defaultValue;
}

- (BOOL)dlm_boolValueForKey:(NSString *)key defaultValue:(BOOL)defaultValue;
{
    id value = [self objectForKey:key];
    return [value respondsToSelector:@selector(boolValue)] ? [value boolValue] : defaultValue;
}

- (NSString *)dlm_stringValueForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
{
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSString class]]) {
        return value;
    }
    else if ([value respondsToSelector:@selector(stringValue)]) {
        return [value stringValue];
    }
    
    return defaultValue;
}

- (NSObject *)dlm_ValueForKey:(NSString *)key defaultValue:(NSObject *)defaultValue
{
    id value = [self objectForKey:key];
    return value ? value : defaultValue;
}
@end
