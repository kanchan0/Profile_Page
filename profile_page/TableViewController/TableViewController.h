//
//  TableViewController.h
//  profile_page
//
//  Created by Tiwari, Kanchan Kumar (Cognizant) on 18/02/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UITableViewController <UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *daataArray;
}
@property(weak,nonatomic)IBOutlet UITableView *mtableView;
- (IBAction)onClickShowCheckboxes:(id)sender;

@end

NS_ASSUME_NONNULL_END
