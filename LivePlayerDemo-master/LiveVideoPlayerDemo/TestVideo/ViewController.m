//
//  ViewController.m
//  TestVideo
//
//  Created by Admin on 12/21/14.
//  Copyright (c) 2014 Sutan. All rights reserved.
//

#import "ViewController.h"
#import "LVMovieViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - IBAction
//播放
- (IBAction)playButtonTouchAction:(id)sender {
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
        parameters[LVMovieParameterDisableDeinterlacing] = @(YES);
    
    /****这里换成直播、点播的地址****/
    NSString *path = @"rtmp://115.231.90.210/vod/CsAWblbiNQ6ABtEICGR-HIpar-0798.flv ";
    LVMovieViewController *videoPlayVC = [LVMovieViewController movieViewControllerWithContentPath:path parameters:parameters];
    [self presentViewController:videoPlayVC animated:YES completion:nil];
}


@end
