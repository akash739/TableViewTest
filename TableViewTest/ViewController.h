//
//  ViewController.h
//  TableViewTest
//
//  Created by teks on 5/2/16.
//  Copyright © 2016 teks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *table1;


@end

