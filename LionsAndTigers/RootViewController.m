//
//  ViewController.m
//  LionsAndTigers
//
//  Created by Heidi Kyaw on 1/15/15.
//  Copyright (c) 2015 com.Seaver. All rights reserved.
//

#import "RootViewController.h"
#import "TopNewViewController.h"
#import "HUDViewController.h"
#import "CustomCollectionViewCell.h"

@interface RootViewController () <TopDelegate>

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftTopConstraint;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightTopConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftConstrain;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightConstrain;


@property TopNewViewController *topVC;
@property HUDViewController *hudVC;

@end


@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.topVC.delegate = self;
    self.hudVC.delegate = self.topVC;
}

-(void)topRevealButtonTapped
{
    [UIView animateWithDuration:0.55
                          delay:0.0
                        options:0
                     animations:^{
                         if (self.rightConstrain.constant == -16)
                         {
                             [self showMenuTab];
                         }
                         else
                         {
                             [self hideMenuTab];
                         }
                         [self.view layoutIfNeeded];
                     } completion:^(BOOL finished)
     {
     }];

}

-(void)hideMenuTab
    {
        self.rightConstrain.constant = -16;
        self.leftConstrain.constant = -16;
    }

-(void)showMenuTab
    {
        self.rightConstrain.constant = -112;
        self.leftConstrain.constant = 80;
    }




-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString * segueName = segue.identifier;
    if ([segueName isEqualToString: @"navSegue"]) {
        UINavigationController * navController = segue.destinationViewController; //transfor anotherVC in UINavVC
        self.topVC = [navController.viewControllers objectAtIndex:0];

    }
    if ([segueName isEqualToString: @"hudSegue"]) {
        self.hudVC = segue.destinationViewController;
        
    }
}




@end




