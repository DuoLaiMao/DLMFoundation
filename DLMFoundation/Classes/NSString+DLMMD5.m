//
//  NSString+DLMMD5.m
//  DLMFoundation
//
//  Created by YangJian on 2015/12/12.
//

#import "NSString+DLMMD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (DLMMD5)

- (NSString *)dlm_md5Value
{
    if(self == nil || [self length] == 0)
        return nil;
    
    const char *value = [self UTF8String];
    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(value, (CC_LONG)strlen(value), outputBuffer);
    
    NSMutableString *outputString = [[NSMutableString alloc] initWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(NSInteger count = 0; count < CC_MD5_DIGEST_LENGTH; count++){
        [outputString appendFormat:@"%02x",outputBuffer[count]];
    }
    
    return outputString;
}

@end
