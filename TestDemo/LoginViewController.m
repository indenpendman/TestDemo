//
//  LoginViewController.m
//  TestDemo
//
//  Created by weixuewu on 2017/5/24.
//  Copyright © 2017年 weixuewu. All rights reserved.
//

#import "LoginViewController.h"
#import "ListViewController.h"
#import "NSString+String.h"

const NSString *kPhone = @"15312345678";
const NSString *kPwd   = @"123";

@interface LoginViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *phoneField;
@property (weak, nonatomic) IBOutlet UITextField *pwdField;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _phoneField.isAccessibilityElement = YES;
    _pwdField.isAccessibilityElement = YES;
    _pwdField.delegate = self;
}

- (IBAction)login:(UIButton *)sender {

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:nil preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    
    if (![_phoneField.text isPhone]) {
        alert.message = @"请输入正确格式的手机号";
        [self presentViewController:alert animated:YES completion:nil];
        return;
    }
    
    if (![kPhone isEqualToString:_phoneField.text]) {
        alert.message = @"手机号不对";
        [self presentViewController:alert animated:YES completion:nil];
        return;
    }
    
    if (![kPwd isEqualToString:_pwdField.text]) {
        alert.message = @"密码不对";
        [self presentViewController:alert animated:YES completion:nil];
        return;
    }
    
    ListViewController *vc = [[ListViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
   
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    textField.text = nil;
    return YES;
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
