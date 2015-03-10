//
//  SearchGifInteractor.h
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GifProvider;

@interface SearchGifInteractor : NSObject

@property (nonatomic, strong) GifProvider *gifProvider;

- (void)searchGifWithWords:(NSArray *)words completionBlock:(void(^)(NSArray *))completionBlock;

@end
