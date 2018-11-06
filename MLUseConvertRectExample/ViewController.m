//
//  ViewController.m
//  MLUseConvertRectExample
//
//  Created by ML Dai on 2018/11/6.
//  Copyright © 2018 ML Dai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *redview;
@property (weak, nonatomic) IBOutlet UIView *yellowview;
@property (weak, nonatomic) IBOutlet UIView *whiteview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    /***
     
     摘要
     
     将矩形从接收器的坐标系转换为另一个视图的矩形。
     宣言
     
     - （CGRect）convertRect：（CGRect）rect toView：（UIView *）view;
     参数
     
     矩形
     在接收器的本地坐标系（边界）中指定的矩形。
     视图
     作为转换操作目标的视图。 如果view为nil，则此方法将转换为窗口基坐标。 否则，视图和接收器都必须属于同一个UIWindow对象。
     */
    
    NSLog(@"yellowview.frame : %@",NSStringFromCGRect(self.yellowview.frame));
    NSLog(@"redview.frame : %@",NSStringFromCGRect(self.redview.frame));
    NSLog(@"whiteview.frame : %@",NSStringFromCGRect(self.whiteview.frame));
    
    /*** 错误示例❎
     
     CGRect rect1 = [self.whiteview convertRect:self.whiteview.frame toView:self.yellowview];
     NSLog(@"rect1 : %@",NSStringFromCGRect(rect1));
     CGRect rect2 =  [self.yellowview convertRect:rect1 toView:self.yellowview.superview];
     NSLog(@"rect2 : %@",NSStringFromCGRect(rect2));
     */
    
    
    /**正确示例✅
     CGRect rect1 =  [self.redview convertRect:self.whiteview.frame toView:self.yellowview];
     
     NSLog(@"rect1 : %@",NSStringFromCGRect(rect1));
     
     CGRect rect2 =  [self.yellowview convertRect:rect1 toView:self.yellowview.superview];
     
     NSLog(@"rect2 : %@",NSStringFromCGRect(rect2));
     */
    
    CGRect rect1 =  [self.redview convertRect:self.whiteview.frame toView:self.yellowview];
    
    NSLog(@"rect1 : %@",NSStringFromCGRect(rect1));
    
    CGRect rect2 =  [self.yellowview convertRect:rect1 toView:self.yellowview.superview];
    
    NSLog(@"rect2 : %@",NSStringFromCGRect(rect2));
    
}

@end
