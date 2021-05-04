//
//  ZFFPlayerManager.m
//  ZFFPlayer
//
//  Created by Fangfang Zhang on 2021/5/4.
//

#import "ZFFPlayerManager.h"

static ZFFPlayerManager *shareInstance = nil;

@implementation ZFFPlayerManager

+ (ZFFPlayerManager *)sharedManager
{
    @synchronized (self) {
    if (!shareInstance) {
        shareInstance = [[ZFFPlayerManager alloc] init];
        
        NSLog(@"初始化单例");
    }
       return shareInstance;
  }
}



@end
