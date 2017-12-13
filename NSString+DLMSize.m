//
//  NSString+DLMSize.m
//  DLMFoundation
//
//  Created by YangJian on 2015/12/12.
//

#import "NSString+DLMSize.h"

@implementation NSString (DLMSize)

- (CGSize)dlm_sizeWithFont:(UIFont *)font containerSize:(CGSize)size breakMode:(NSLineBreakMode)breakMode
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineBreakMode = breakMode;
    NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
    NSDictionary *attribute = @{NSFontAttributeName :font, NSParagraphStyleAttributeName :paragraphStyle};
    
    return [self boundingRectWithSize:size options:options attributes:attribute context:nil].size;
}

@end
