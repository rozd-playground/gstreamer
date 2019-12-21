//
//  GStreamerBackend.m
//  GStreamerHelloWorld
//
//  Created by Max Rozdobudko on 1/30/15.
//  Copyright (c) 2015 Max Rozdobudko. All rights reserved.
//

#import "GStreamerBackend.h"

@implementation GStreamerBackend

-(NSString*) getGStreamerVersion
{
    char *version_utf8 = gst_version_string();
    NSString *version_string = [NSString stringWithUTF8String:version_utf8];
    g_free(version_utf8);
    return version_string;
}

@end
