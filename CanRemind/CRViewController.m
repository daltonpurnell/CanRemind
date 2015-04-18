//
//  CRViewController.m
//  CanRemind
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "CRViewController.h"

@interface CRViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation CRViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)remindIn10Seconds {
    NSDate *alertTime = [[NSDate date] dateByAddingTimeInterval:10];
    
    UILocalNotification *localNotification = [UILocalNotification new];
    
    if (localNotification) {
        localNotification.fireDate = alertTime;
        localNotification.timeZone = [NSTimeZone defaultTimeZone];
        localNotification.repeatInterval = 0;
        localNotification.soundName = @"bell_tree.mp3";
        localNotification.alertBody = @"This is a 10 second notification";
        localNotification.applicationIconBadgeNumber = 1;
        
        [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
        
    }
    
}


- (IBAction)remindOnDate {
    
    NSDate *alertTime = self.datePicker.date;
    UILocalNotification *localNotification = [UILocalNotification new];
    
    if (localNotification) {
        localNotification.fireDate = alertTime;
        localNotification.timeZone = [NSTimeZone defaultTimeZone];
        localNotification.repeatInterval = 0;
        localNotification.soundName = @"bell_tree.mp3";
        localNotification.alertBody = @"This is a date picker notification";
        localNotification.applicationIconBadgeNumber = 1;
        
        [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}








@end
