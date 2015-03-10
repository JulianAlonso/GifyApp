//
//  URLMakerHelper.m
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import "URLMakerHelper.h"

@implementation URLMakerHelper

- (NSURL *)urlWithBasepath:(NSString *)basePath endPoint:(NSString *)endPoint andParams:(NSDictionary *)params
{
    NSMutableString *url = [NSMutableString string];
    
    [url appendString:basePath];
    [url stringByAppendingPathComponent:endPoint];
    
    [url appendString:@"?"];
    
    BOOL first = YES;
    for (NSString *key in params)
    {
        if (first)
        {
            [url appendFormat:@"%@=%@", key, params[key]];
            first = NO;
        }
        else
        {
            [url appendFormat:@"&%@=%@", key, params[key]];
        }
    }
    
    return [NSURL URLWithString:url];
}

@end
