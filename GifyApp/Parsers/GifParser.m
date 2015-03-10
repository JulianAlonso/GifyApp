//
//  GifParser.m
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import "GifParser.h"
#import "Gify.h"
#import "PathHelper.h"

@implementation GifParser

+ (NSArray *)parseGifsFromArray:(NSArray *)gifsData
{
    NSMutableArray *gifs = [NSMutableArray array];
    for (NSDictionary *gifData in gifsData)
    {
        Gify *gify = [[Gify alloc] init];
        
        gify.url = [gifData valueForKeyPath: @"images.original.url"];
        gify.width = [gifData valueForKeyPath: @"images.original.width"];
        gify.height = [gifData valueForKeyPath: @"images.original.height"];
        gify.pageUrl = [gifData valueForKey: @"url"];
        gify.localPath = [[PathHelper gifDocumentsBasePath] stringByAppendingString:gify.url];
        
        [gifs addObject:gify];
    }
    return gifs;
}

@end
