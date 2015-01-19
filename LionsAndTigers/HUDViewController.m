//
//  HUDViewController.m
//  LionsAndTigers
//
//  Created by Heidi Kyaw on 1/15/15.
//  Copyright (c) 2015 com.Seaver. All rights reserved.
//

#import "HUDViewController.h"

@interface HUDViewController ()

@end

@implementation HUDViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)lionsButtonTapped:(UIButton*)sender
{
    [self.delegate displayLionsImages];

}
- (IBAction)tigersButtonTapped:(UIButton *)sender
{
    [self.delegate displayTigersImages];

}





@end
