//
//  SearchViewController.m
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import "SearchViewController.h"
#import "SearchGifInteractor.h"
#import "DefaultSearchViewDelegate.h"

@interface SearchViewController ()

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UITableView *searchTableView;

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SearchGifInteractor *SGI = [[SearchGifInteractor alloc] init];
    
    [SGI searchGifWithWords:@[@"cat"] completionBlock:^(NSArray *gifs) {
        
    }];
    
    [self configureProperties];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark - Configure methods.
- (void)configureProperties
{
    self.searchTableView.delegate = self.delegate;
    self.searchTableView.dataSource = self.delegate;
    self.searchBar.delegate = self.delegate;
}

#pragma mark - Lazy getters.
- (id<SearchViewDelegate>)delegate
{
    if (!_delegate)
    {
        _delegate = [[DefaultSearchViewDelegate alloc] init];
    }
    return _delegate;
}

@end
