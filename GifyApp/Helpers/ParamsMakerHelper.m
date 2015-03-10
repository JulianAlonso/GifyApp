//
//  ParamsMakerHelper.m
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import "ParamsMakerHelper.h"

@implementation ParamsMakerHelper

+ (NSDictionary *)paramsWithArrays:(NSArray *)arrays forKeys:(NSArray *)keys
{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    
    for (uint i=0; i<arrays.count; i++)
    {
        [params setObject:[ParamsMakerHelper prepareParamsFromArray:arrays[i]] forKey:keys[i]];
    }
    
    return params;
}

+ (NSString *)prepareParamsFromArray:(NSArray *)array
{
    NSMutableString *params = [NSMutableString string];
    
    BOOL isFirst = YES;
    for (id param in array)
    {
        if (isFirst)
        {
            [params appendString:param];
            isFirst = NO;
        }
        else
        {
            [params appendFormat:@"+%@", param];
        }
    }
    return params;
}

@end
