//
//  PodViewController.h
//  Pods
//
//  Created by THIRUVADISAMY_P on 25/01/16.
//
//

#import <UIKit/UIKit.h>

@interface PodViewController : UIViewController

// Method to Update the FadeOut View
- (void) fadeOut:(UIView *)animationView timeInterval:(NSTimeInterval)timeDuration timeDelay:(NSTimeInterval)timeDelay fadeOutValue:(CGFloat) fadeOutOpacity;

@end
