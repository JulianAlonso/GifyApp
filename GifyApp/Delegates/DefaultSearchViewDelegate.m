//
//  DefaultSearchViewDelegate.m
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import "DefaultSearchViewDelegate.h"
#import "GifyDTO.h"

@implementation DefaultSearchViewDelegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    
    [self.searchGifInteractor searchGifWithWords:[searchBar.text componentsSeparatedByString:@" "] completionBlock:^(NSArray *gifs) {
        
        for (GifyDTO *gify in gifs)
        {
            NSLog(@"%@", gify);
        }
        
    }];
    
}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar
{
    NSLog(@"Text did begin editing");
}

#pragma mark - Lazy getters.
- (SearchGifInteractor *)searchGifInteractor
{
    if (!_searchGifInteractor)
    {
        _searchGifInteractor = [[SearchGifInteractor alloc] init];
    }
    return _searchGifInteractor;
}

@end
