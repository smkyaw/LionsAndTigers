//
//  TopNewViewController.h
//  LionsAndTigers
//
//  Created by Heidi Kyaw on 1/15/15.
//  Copyright (c) 2015 com.Seaver. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HUDViewController.h"

@protocol TopDelegate <NSObject>

-(void)topRevealButtonTapped;

@end

@interface TopNewViewController : UIViewController<HUDDelegate>


@property (nonatomic, weak) id <TopDelegate> delegate;

@end
