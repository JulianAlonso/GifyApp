//
//  RequestManager.h
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RequestManager <NSObject>

- (void)searchGifWithWords:(NSArray *)words completionBlock:(void(^)(NSData *data))completionBlock;

@end
