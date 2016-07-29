//
//  ViewController.m
//  Accelerometer
//
//  Created by LLDM on 29/07/2016.
//  Copyright © 2016 LLDM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self accelerometer];
    

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)accelerometer {
    self.motionManager = [[CMMotionManager alloc] init];
    self.motionManager.accelerometerUpdateInterval = 1;
    
    if ([self.motionManager isAccelerometerAvailable])
    {
        NSOperationQueue *queue = [[NSOperationQueue alloc] init];
        [self.motionManager startAccelerometerUpdatesToQueue:queue withHandler:^(CMAccelerometerData *accelerometerData, NSError *error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                [xlabel setText:[NSString stringWithFormat:@"%f",accelerometerData.acceleration.x]];
                [ylabel setText:[NSString stringWithFormat:@"%f",accelerometerData.acceleration.y]];
                [zlabel setText:[NSString stringWithFormat:@"%f",accelerometerData.acceleration.z]];
                
            });
        }];
    } else NSLog(@"not active");
}

@end
