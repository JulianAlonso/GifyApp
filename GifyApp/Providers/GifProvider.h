//
//  GifProvider.h
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequestManager.h"

@interface GifProvider : NSObject

@property (nonatomic, strong) id<RequestManager> requestManager;

- (void)searchGifWithWords:(NSArray *)words completionBlock:(void (^)(NSArray *results))completionBlock;

@end
