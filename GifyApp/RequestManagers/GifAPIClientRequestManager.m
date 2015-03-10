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
    
    NSDictionary *params = [ParamsMakerHelper paramsWithArrays:@[words, @[kApiKey]] forKeys:@[@"q", @"api_key"]];
    
    NSURL *url = [URLMakerHelper urlWithBasepath:kApiBasePath endPoint:kSearchPath andParams:params];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {

        if (error)
        {
            completionBlock(nil);
        }
        else
        {
            completionBlock(data);
        }
        
    }] resume];
}

@end
