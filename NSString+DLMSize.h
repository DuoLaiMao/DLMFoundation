//
//  NSString+DLMSize.h
//  DLMFoundation
//
//  Created by YangJian on 2015/12/12.
//

#import <Foundation/Foundation.h>

@interface NSString (DLMSize)

- (CGSize)dlm_sizeWithFont:(UIFont *)font containerSize:(CGSize)size breakMode:(NSLineBreakMode)breakMode;

@end
