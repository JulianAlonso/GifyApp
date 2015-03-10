//
//  SearchViewController.h
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SearchViewDelegate.h"

@interface SearchViewController : UIViewController

@property (nonatomic, strong) id<SearchViewDelegate> delegate;

@end
