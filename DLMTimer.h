//
//  DLMTimer.h
//  DLMFoundation
//
//  Created by YangJian on 2015/12/12.
//

#import <Foundation/Foundation.h>

// !!!: NSTimer存在runloop model和循环引用的问题
@interface DLMTimer : NSObject
{
    __weak id target;
    SEL selector;
    
}

@property (nonatomic,strong) NSTimer* timer;

+ (DLMTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector;

- (void)invalidate;

@end
