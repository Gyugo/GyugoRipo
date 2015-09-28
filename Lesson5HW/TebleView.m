//
//  TebleView.m
//  Lesson5HW
//
//  Created by Viktor on 28.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "TebleView.h"
#import "BoardGame.h"
#import <MagicalRecord/MagicalRecord.h>


@interface TebleView ()

@property (weak, nonatomic) IBOutlet UIButton *buttonAdd;
@property (strong, nonatomic) NSMutableArray * mArray;
@property (strong, nonatomic) BoardGame * dataGame;
@end

@implementation TebleView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.buttonAdd addTarget:self action:@selector(actionButtonAdd) forControlEvents:UIControlEventTouchUpInside];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) actionButtonAdd {
    
    ViewController * detail = [self.storyboard instantiateViewControllerWithIdentifier:@"viewController"];
    [self.navigationController pushViewController:detail animated:YES];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.mArray.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* identifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    self.dataGame = [self.mArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = self.dataGame.gameName;
    
    cell.detailTextLabel.text = self.dataGame.gameType;
    return cell;
}



@end
