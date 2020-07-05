//
//  VideoCollectionViewCell.h
//  StyleDotMeTask
//
//  Created by Touqueir Ahmad on 05/07/20.
//  Copyright © 2020 Toqsoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVKit/AVKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VideoCollectionViewCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *detailsLabel;
@property (strong, nonatomic) AVPlayerViewController *playerViewController;

@end

NS_ASSUME_NONNULL_END
