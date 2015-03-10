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

- (void)searchGifWithWords:(NSArray *)words completionBlock:(void(^)(NSArray *gifs))completionBlock
{
    if (words)
    {
        [self.gifProvider searchGifWithWords:words completionBlock:^(NSArray *results) {
            completionBlock(results);
        }];
    }
    else
    {
        completionBlock([NSArray array]);
    }
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
