//
//  FCViewController.m
//  Forecast
//
//  Created by Kevin Jenkins on 12/9/13.
//  Copyright (c) 2013 somethingPointless. All rights reserved.
//

#import "FCViewController.h"
#import "FIOWeather.h"
#import "FIOAPI.h"

@interface FCViewController ()

@end

@implementation FCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    // get a forecast
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(weatherUpdated:) name:FIOWeatherUpdateSuccess object:nil];
    [FIOAPI requestWeatherForLocation:CGPointMake(39.95, -75.17)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)weatherUpdated:(NSNotification *)notification {
    FIOWeather *weatherData = [notification userInfo][FIOAPIWeatherKey];
}

@end
