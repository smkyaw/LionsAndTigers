//
//  TopNewViewController.m
//  LionsAndTigers
//
//  Created by Heidi Kyaw on 1/15/15.
//  Copyright (c) 2015 com.Seaver. All rights reserved.
//

#import "TopNewViewController.h"
#import "RootViewController.h"
#import "CustomCollectionViewCell.h"


@interface TopNewViewController () <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *menuButton;
@property UIImage *lion_1;
@property UIImage *lion_2;
@property UIImage *lion_3;

@property UIImage *tiger_1;
@property UIImage *tiger_2;
@property UIImage *tiger_3;

@property NSMutableArray * photoArray;
@property NSMutableArray * lionArray;
@property NSMutableArray * tigerArray;

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation TopNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.photoArray = [NSMutableArray new];
    self.lion_1 = [UIImage imageNamed:@"Lion1.png"];
    self.lion_2 = [UIImage imageNamed:@"Lion2.png"];
    self.lion_3 = [UIImage imageNamed:@"Lion3.png"];
    self.lionArray = [[NSMutableArray alloc] initWithObjects:self.lion_1, self.lion_2, self.lion_3, nil];


    self.tiger_1 = [UIImage imageNamed:@"Tiger3.png"];
    self.tiger_2 = [UIImage imageNamed:@"Tiger2.png"];
    self.tiger_3 = [UIImage imageNamed:@"Tiger1.png"];
    self.tigerArray = [[NSMutableArray alloc] initWithObjects:self.tiger_1, self.tiger_2, self.tiger_3, nil];

    self.photoArray = self.lionArray;


}




- (IBAction)onMenuTapped:(id)sender {

    [self.delegate topRevealButtonTapped];
}



-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.photoArray.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.imageViewCell.image = [self.photoArray objectAtIndex:indexPath.row];
    return cell;
}


-(void)displayLionsImages
{
    self.photoArray = self.lionArray;
    [self.collectionView reloadData];
    [self.delegate topRevealButtonTapped];

}

-(void)displayTigersImages
{
    self.photoArray = self.tigerArray;
    [self.collectionView reloadData];
    [self.delegate topRevealButtonTapped];

}



@end





