//
//  autoGetRedEnv.m
//  autoGetRedEnv
//
//  Created by East on 16/3/21.
//  Copyright (c) 2016年 __MyCompanyName__. All rights reserved.
//

#import "CaptainHook.h"
CHDeclareClass(WCDeviceStepObject);

CHMethod(0, unsigned int, WCDeviceStepObject, m7StepCount)
{
    CHSuper(0, WCDeviceStepObject, m7StepCount);
    return arc4random()%99999;
}

__attribute__((constructor)) static void entry()
{
    NSLog(@"hello,i am hooked you");
    CHLoadLateClass(WCDeviceStepObject);
    CHClassHook(0, WCDeviceStepObject, m7StepCount);
}