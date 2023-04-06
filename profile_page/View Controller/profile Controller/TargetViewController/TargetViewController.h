//
//  TargetViewController.h
//  profile_page
//
//  Created by Tiwari, Kanchan Kumar (Cognizant) on 17/02/21.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface TargetViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate,
UITableViewDataSource,UITableViewDelegate>{
    
    __weak IBOutlet UIImageView *imageView;
    __weak IBOutlet UITableView *tableview;
}


@end

NS_ASSUME_NONNULL_END
