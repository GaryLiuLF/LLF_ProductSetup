//
//  SynthesizeSingleton.h
//  LLF_ProjectSetup
//
//  Created by Apple on 16/12/5.
//  Copyright © 2016年 LLF. All rights reserved.
//

#ifndef SynthesizeSingleton_h
#define SynthesizeSingleton_h

#define SYNTHESIZE_SINGLETON_FOR_CLASS(classname) \
\
static classname *shared##classname = nil; \
\
+ (classname *)shared##classname \
{ \
    static dispatch_once_t onceToken; \
    dispatch_once(&onceToken, ^{ \
        shared##classname = [[self alloc] init]; \
    }); \
    return shared##classname; \
} \


#endif /* SynthesizeSingleton_h */
