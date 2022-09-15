
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
  if(value != nil) {
    callback(@[[NSNull null], value]);
  } else {
    callback(@[@"Config value not found", [NSNull null]]);
  }
}

+ (BOOL)requiresMainQueueSetup
{
  return YES;
}

@end
