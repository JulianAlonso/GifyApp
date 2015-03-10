//
//  ViewController.m
//  GifyApp
//
//  Created by Julian Alonso on 9/3/15.
//  Copyright (c) 2015 Julian. All rights reserved.
//

#import "ViewController.h"
#import "SearchGifInteractor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SearchGifInteractor *SGI = [[SearchGifInteractor alloc] init];
    
    [SGI searchGifWithWords:@[@"cat"] completionBlock:^(NSArray *gifs) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
