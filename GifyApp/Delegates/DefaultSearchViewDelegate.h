//
//  DefaultSearchViewDelegate.h
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SearchViewDelegate.h"
#import "SearchGifInteractor.h"

@interface DefaultSearchViewDelegate : NSObject <SearchViewDelegate>

@property (nonatomic, strong) SearchGifInteractor *searchGifInteractor;

@end
