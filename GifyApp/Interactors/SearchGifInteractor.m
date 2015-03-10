//
//  SearchGifInteractor.m
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import "SearchGifInteractor.h"
#import "GifProvider.h"

@implementation SearchGifInteractor

- (NSArray *)searchGifWithWords:(NSArray *)words
{
    NSArray *results = [NSArray array];
    
    if (words)
    {
        results = [self.gifProvider searchGifWithWords:words];
    }
    
    return results;
}

#pragma mark - Lazy getters.
- (GifProvider *)gifProvider
{
    if(!_gifProvider)
    {
        _gifProvider = [[GifProvider alloc] init];
    }
    return _gifProvider;
}

@end
