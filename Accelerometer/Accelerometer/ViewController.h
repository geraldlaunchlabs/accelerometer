//
//  ViewController.h
//  Accelerometer
//
//  Created by LLDM on 29/07/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController<UIAccelerometerDelegate> {
    IBOutlet UILabel *xlabel;
    IBOutlet UILabel *ylabel;
    IBOutlet UILabel *zlabel;
}

@property (nonatomic, strong) CMMotionManager *motionManager;

@end

