//
//  GifParser.h
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GifParser : NSObject

+ (NSArray *)parseGifsFromArray:(NSArray *)gifsData;

@end
