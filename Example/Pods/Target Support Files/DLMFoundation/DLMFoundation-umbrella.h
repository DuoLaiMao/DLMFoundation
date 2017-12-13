#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "DLMFoundation.h"
#import "DLMTimer.h"
#import "NSArray+DLMSafe.h"
#import "NSDictionary+DLM.h"
#import "NSString+DLMMD5.h"
#import "NSString+DLMSize.h"

FOUNDATION_EXPORT double DLMFoundationVersionNumber;
FOUNDATION_EXPORT const unsigned char DLMFoundationVersionString[];

