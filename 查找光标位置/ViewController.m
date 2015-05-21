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

#pragma mark - private method
//
//- (CGSize)boundingRectWithSize:(CGSize)size
//{
//    NSDictionary *attribute = @{NSFontAttributeName: self.textField.font};
//    
//    CGSize retSize = [self.textField.text boundingRectWithSize:size
//                                             options:\
//                      NSStringDrawingTruncatesLastVisibleLine |
//                      NSStringDrawingUsesLineFragmentOrigin |
//                      NSStringDrawingUsesFontLeading
//                                          attributes:attribute
//                                             context:nil].size;
//    
//    return retSize;
//}
//
//- (CGFloat)cursorOffset
//{
//    NSArray *textrect = [self.textField selectionRectsForRange:[self.textField selectedTextRange]];
//    CGRect rect = ((UITextSelectionRect *)textrect[0]).rect;
//    
//    if (rect.origin.x > 100000) {
//        
//        //计算文字大小
//        CGSize size = [self boundingRectWithSize:CGSizeMake(0, CGRectGetHeight(self.textField.frame))];
//
//        if (self.textField.textAlignment == NSTextAlignmentCenter){
//            CGSize size = [self boundingRectWithSize:CGSizeMake(0, CGRectGetHeight(self.textField.frame))];
//            CGFloat width = CGRectGetWidth(self.textField.frame);
//            return width - (width - size.width)/2.0f;
//        } else if (self.textField.textAlignment == NSTextAlignmentRight){
//            return CGRectGetWidth(self.textField.frame);
//        } else {
//            return size.width;
//        }
//    }
//    
//    return rect.origin.x;
//}

#pragma mark - click

- (IBAction)click:(id)sender {
    self.constraint.constant = [self.textField cursorOffset] + self.textField.frame.origin.x;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.textField resignFirstResponder];
}




@end
