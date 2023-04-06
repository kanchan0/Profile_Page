//
//  FeedbackTableViewCell.h
//  profile_page
//
//  Created by Tiwari, Kanchan Kumar (Cognizant) on 21/02/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FeedbackTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIButton *checkbutton;
- (IBAction)CheckButtonClicked:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *contentTitle;

@end

NS_ASSUME_NONNULL_END
