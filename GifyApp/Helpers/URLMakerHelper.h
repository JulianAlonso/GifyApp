//
//  URLMakerHelper.h
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface URLMakerHelper : NSObject

+ (NSURL *)urlWithBasepath:(NSString *)basePath endPoint:(NSString *)endPoint andParams:(NSDictionary *)params;

@end
