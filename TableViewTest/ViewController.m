//
//  ViewController.m
//  TableViewTest
//
//  Created by teks on 5/2/16.
//  Copyright © 2016 teks. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
NSArray *list;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    list = [NSArray arrayWithObjects:@"DatePicker",@"PickerView",@"TableView", nil];
    
    self.table1.dataSource=self;
    self.table1.delegate=self;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return list.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [list objectAtIndex:indexPath.row];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
