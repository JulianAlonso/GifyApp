//
//  GifyDTO.h
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GifyDTO : NSObject

@property (nonatomic, strong) NSString * url;
@property (nonatomic, strong) NSNumber * width;
@property (nonatomic, strong) NSNumber * height;
@property (nonatomic, strong) NSString * pageUrl;
@property (nonatomic, strong) NSString * localPath;

@end
