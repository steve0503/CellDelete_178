//
//  ViewController.m
//  CellDelete_178
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 steve. All rights reserved.
//

#import "ViewController.h"

#define CELl_ID @"CELL_ID"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>{
    
    NSMutableArray *data;
    
}

@end

@implementation ViewController

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [data removeObjectAtIndex:indexPath.row];
    
    NSArray *rows = [NSArray arrayWithObject:indexPath];
    [tableView deleteRowsAtIndexPaths:rows withRowAnimation:UITableViewRowAnimationAutomatic];
    
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [data count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CELl_ID];
    
    cell.textLabel.text = [data objectAtIndex:indexPath.row];
    
    return cell;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    data = [[NSMutableArray alloc] initWithObjects:@"a",@"b",@"c",@"d",@"e",@"f", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
