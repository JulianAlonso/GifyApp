//
//  GifAPIClientRequestManager.m
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import "GifAPIClientRequestManager.h"
#import "URLMakerHelper.h"
#import "ApiConstants.h"
#import "ParamsMakerHelper.h"

@implementation GifAPIClientRequestManager

- (void)searchGifWithWords:(NSArray *)words completionBlock:(void (^)(NSData *))completionBlock
{
    
    NSDictionary *params = [NSDictionary dictionary];
    
    NSURL *url = [URLMakerHelper urlWithBasepath:kApiBasePath endPoint:kSearchPath andParams:params];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    
    
}

@end
