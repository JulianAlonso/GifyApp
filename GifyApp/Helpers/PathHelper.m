//
//  PathHelper.m
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import "PathHelper.h"

@implementation PathHelper

+ (NSString *)gifDocumentsBasePath
{
    NSString *documentsBasePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    
    return [documentsBasePath stringByAppendingPathComponent:@"gifs"];
}

@end
