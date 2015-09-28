//
//  ViewController.m
//  Lesson5HW
//
//  Created by Viktor on 27.09.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) NSString * stringText;
- (IBAction)buttonSave:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *buttonBack;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.buttonBack addTarget:self action:@selector(actionBackButton) forControlEvents:UIControlEventTouchUpInside];
    
}

- (BOOL)textFieldShouldReturn:(UITextField*)textField
{
    
    if ([textField isEqual:self.textField]) {
        if ([self.textField.text length] != 0) {
            
            [self.textField resignFirstResponder];
            return YES;
        }

    }
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonSave:(id)sender {
    
    DetailCoreData * addCoreData = [[DetailCoreData alloc] init];
    [addCoreData addDataNameBoard:self.textField.text andTypeBoard:self.textField.text];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void) actionBackButton {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
