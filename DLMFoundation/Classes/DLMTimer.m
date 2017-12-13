//
//  DLMTimer.m
//  DLMFoundation
//
//  Created by YangJian on 2015/12/12.
//

#import "DLMTimer.h"

@implementation DLMTimer

- (void)dealloc
{
    [self invalidate];
}

-(void)time
{
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    if ([target respondsToSelector:selector]) {
        [target performSelector:selector];
    }
#pragma clang diagnostic pop
}

- (void)invalidate
{
    [self.timer invalidate];
    _timer = nil;
    target = nil;
    selector = nil;
}

+ (DLMTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector
{
    DLMTimer* timer = [[DLMTimer alloc] init];
    if (timer)
    {
        timer->target = aTarget;
        timer->selector = aSelector;
        timer.timer = [NSTimer timerWithTimeInterval:ti target:timer selector:@selector(time) userInfo:nil repeats:YES];
        NSRunLoop *runner = [NSRunLoop currentRunLoop];
        [runner addTimer: timer.timer forMode:NSRunLoopCommonModes];
    }
    return timer;
}

@end
