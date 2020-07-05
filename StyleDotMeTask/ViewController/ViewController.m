//
//  ViewController.m
//  StyleDotMeTask
//
//  Created by Touqueir Ahmad on 05/07/20.
//  Copyright © 2020 Toqsoft. All rights reserved.
//

#import "ViewController.h"
#import "VideoCollectionViewCell.h"
#import "ReviewTableViewCell.h"


@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController
{
    NSArray *namesArray, *detailsArray, *reviewArray;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    namesArray = [NSArray arrayWithObjects:@"BlueBuild Chaina",@"Build India", nil];
    detailsArray = [NSArray arrayWithObjects:@"1Week ago - 2,550 Play",@"2Weeks ago - 4,150 Play", nil];
    reviewArray = [NSArray arrayWithObjects:@"The videos section on the top part should scroll horizontally and the whole comments list should scroll vertically.",@"Use dummy data.",@"Use Avenir fonts or similar variants for the text in the UI.",@"Match the UI as closely as possible.",@"Attention to detail is a must. Margins, paddings, cell sizes, font size, colors, etc.",@"Use Avenir fonts or similar variants for the text in the UI.Attention to detail is a must. Margins, paddings, cell sizes, font size, colors, etc.", nil];
    
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 2;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- ( UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    VideoCollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"VideoCollectionViewCell" forIndexPath:indexPath];
    cell.nameLabel.text = namesArray[indexPath.row];
    cell.detailsLabel.text = detailsArray[indexPath.row];
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return reviewArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ReviewTableViewCell *cell= [self.tableView dequeueReusableCellWithIdentifier:@"ReviewTableViewCell" forIndexPath:indexPath];
    cell.reviewLabel.text = reviewArray[indexPath.row];
    return cell;
}
@end
