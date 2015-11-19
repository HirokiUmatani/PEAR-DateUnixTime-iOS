//
//  ViewController.m
//  DateUnixTime
//
//  Created by hirokiumatani on 2015/11/19.
//  Copyright © 2015年 hirokiumatani. All rights reserved.
//

#import "ViewController.h"
#import "DateUnixTime.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

/**
 convert from NSDate Date Time
 Sample NSDate Data
 */
#define NOW_DATE [NSDate date]
#define OUTPUT_FORMAT @"yyyy-MM-dd HH:mm:ss.SSS"
    
    NSString *date_string =[DateUnixTime convertStringFromDate:NOW_DATE outputFormat:OUTPUT_FORMAT];
    NSLog(@"date -> string :%@",date_string);
    
    double date_time = [DateUnixTime convertUnixTimeFromDate:NOW_DATE];
    NSLog(@"date -> unix_time :%f",date_time);
    
    NSString *time_str =[DateUnixTime convertStringFromUnixTime:date_time outputFormat:OUTPUT_FORMAT];
    NSLog(@"unix_time -> string :%@",time_str);
    
/**
 convert from NSString Date Time
 Sample NSString Data
 */
#define TEST_DATE @"1234-05-06 01:23:45.678"
#define INPUT_FORMAT @"yyyy-MM-dd HH:mm:ss.SSS"
    NSDate * str_date = [DateUnixTime convertDateFromString:TEST_DATE inputFormat:INPUT_FORMAT];
    NSLog(@"string -> date :%@",str_date);
    
    double str_time = [DateUnixTime convertUnixTimeFromString:TEST_DATE inputFormat:INPUT_FORMAT];
    NSLog(@"string -> unix_time :%f",str_time);
    
    NSDate *time_date = [DateUnixTime convertDateFromUnixTime:str_time];
    NSLog(@"unix_time -> date :%@",time_date);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
