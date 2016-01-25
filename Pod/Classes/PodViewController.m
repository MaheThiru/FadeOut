//
//  PodViewController.m
//  Pods
//
//  Created by THIRUVADISAMY_P on 25/01/16.
//
//

#import "PodViewController.h"

@interface PodViewController ()

@end

@implementation PodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Method to Fadeout the view in animation

- (void) fadeOut:(UIView *)animationView timeInterval:(NSTimeInterval)timeDuration timeDelay:(NSTimeInterval)timeDelay fadeOutValue:(CGFloat) fadeOutOpacity {
    
    animationView.alpha = 1.0;
    [UIView animateWithDuration:timeDuration
                          delay:timeDelay
                        options:UIViewAnimationOptionRepeat
                     animations:^{
                         animationView.alpha = fadeOutOpacity;
                     }
                     completion:nil
     ];
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
