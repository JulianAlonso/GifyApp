//
//  DefaultSearchViewDelegate.m
//  GifyApp
//
//  Created by Julian Alonso on 10/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import <SDWebImage/UIImageView+WebCache.h>
#import <SDWebImage/UIImage+GIF.h>
#import "DefaultSearchViewDelegate.h"
#import "GifyDTO.h"
#import "SearchTableViewCell.h"
#import "ViewConstants.h"


@interface DefaultSearchViewDelegate ()

@property (nonatomic, strong) NSArray *gifs;

@end

@implementation DefaultSearchViewDelegate

@synthesize searchTableView = _searchTableView;

#pragma mark - Datasource methods.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SearchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kSearchTableViewCellIdentifier];
    
    GifyDTO *gif = self.gifs[indexPath.row];
    
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:gif.url]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [[self.gifs[indexPath.row] height] floatValue];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.gifs count];
}


#pragma mark - SearchBar methods.
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    __weak typeof(self) weakSelf = self;
    [self.searchGifInteractor searchGifWithWords:[searchBar.text componentsSeparatedByString:@" "] completionBlock:^(NSArray *gifs) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        
        strongSelf.gifs = gifs;
        [strongSelf.searchTableView reloadData];
    }];
    
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
