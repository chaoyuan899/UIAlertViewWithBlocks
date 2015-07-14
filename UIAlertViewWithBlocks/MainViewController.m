//
//  MainViewController.m
//  UIAlertViewWithBlocks
//
//  Created by Aaron.zheng on 15/7/14.
//
//

#import "MainViewController.h"
#import "UIAlertView+Blocks.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 50, 30)];
    btn.backgroundColor = [UIColor lightGrayColor];
    [btn addTarget:self action:@selector(btnTouch:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)btnTouch:(UIButton*)button {
    [UIAlertView showAlertViewWithTitle:@"Test"
                                message:@"This is the alert message."
                      cancelButtonTitle:@"Dismiss"
                      otherButtonTitles:@[@"button1",@"button2"]
                              onDismiss:^(int buttonIndex)  {
                                  
                                  NSLog(@"click btn at index:%i",buttonIndex);
                              }
                               onCancel:^ {
                                   NSLog(@"click cancel button.");
                               }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
