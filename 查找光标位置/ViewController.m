//
//  ViewController.m
//  查找光标位置
//
//  Created by renren on 5/19/15.
//  Copyright (c) 2015 renren. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+CalculateCursorOffset.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *constraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.textField.textAlignment = NSTextAlignmentNatural;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - click

- (IBAction)click:(id)sender {
    self.constraint.constant = [self.textField cursorOffset] + self.textField.frame.origin.x;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.textField resignFirstResponder];
}




@end
