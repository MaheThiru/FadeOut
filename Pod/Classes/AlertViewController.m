//
//  AlertViewController.m
//  Pods
//
//  Created by THIRUVADISAMY_P on 25/01/16.
//
//

#import "AlertViewController.h"

@interface AlertViewController ()

@end

@implementation AlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void) showAlertwithTitle:(NSString *) Title message:(NSString *) message {
 
    if ([UIAlertController class])
    {
        // use UIAlertController
        UIAlertController *alert= [UIAlertController
                                   alertControllerWithTitle:Title
                                   message:message
                                   preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                   handler:^(UIAlertAction * action){
                                                       [alert dismissViewControllerAnimated:YES completion:nil];
                                                   }];
       
        
        [alert addAction:ok];

        
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    else
    {
        // use UIAlertView
        UIAlertView* dialog = [[UIAlertView alloc] initWithTitle:Title
                                                         message:message
                                                        delegate:self
                                               cancelButtonTitle:nil
                                               otherButtonTitles:@"OK", nil];
        
        dialog.alertViewStyle = UIAlertViewStylePlainTextInput;
        [dialog show];
        
    }

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
