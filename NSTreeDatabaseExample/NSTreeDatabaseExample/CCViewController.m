//
//  CCViewController.m
//  NSTreeDatabaseExample
//
//  Created by . Carlin on 12/21/13.
//  Copyright (c) 2013 Carlin Creations. All rights reserved.
//

#import "CCViewController.h"

    #define KEY_CELL_ID @"Cell"

@interface CCViewController () <
    UITableViewDataSource, UITableViewDelegate
>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:KEY_CELL_ID];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:KEY_CELL_ID];
    
    // Customize
    
    return cell;
}


#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Animate simple fade out
    [tableView deselectRowAtIndexPath:indexPath animated:true];
    
    // Do something
}


@end
