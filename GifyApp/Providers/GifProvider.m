//
//  GifProvider.m
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import "GifProvider.h"
#import "GifAPIClientRequestManager.h"
#import "GifParser.h"

@implementation GifProvider

- (void)searchGifWithWords:(NSArray *)words completionBlock:(void(^)(NSArray *results))completionBlock
{
    [self.requestManager searchGifWithWords:words completionBlock:^(NSData *data) {
        //Parse data
        NSError *error;
        NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
        
        NSArray *parsedGifs = [NSArray array];
        
        if (!error)
        {
            parsedGifs = [GifParser parseGifsFromArray:dataDictionary[@"data"]];
        }
        
        completionBlock(parsedGifs);
    }];
}

- (id<RequestManager>)requestManager
{
    if (!_requestManager)
    {
        _requestManager = [[GifAPIClientRequestManager alloc] init];
    }
    return _requestManager;
}

@end
