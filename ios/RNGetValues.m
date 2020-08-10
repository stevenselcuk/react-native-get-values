
#import "RNGetValues.h"

@implementation RNGetValues

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(getKey:(NSString *)key callback:(RCTResponseSenderBlock)callback)
{
  NSString *value = [[NSBundle mainBundle].infoDictionary objectForKey:key];
   callback(@[[NSNull null], value]);
}

+ (BOOL)requiresMainQueueSetup
{
  return YES;
}

@end
