//
//  TargetViewController.m
//  profile_page
//
//  Created by Tiwari, Kanchan Kumar (Cognizant) on 17/02/21.
//

#import "TargetViewController.h"
#import "FeedbackTableViewCell.h"
#import "QuartzCore/QuartzCore.h"

@interface TargetViewController ()
@end

@implementation TargetViewController {
    UIImagePickerController * picker;
    NSArray *details;
}
    
- (void)viewDidLoad {
    [super viewDidLoad];
    tableview.delegate=self;
    tableview.dataSource=self;
    tableview.layer.borderWidth = 2.0;
    tableview.layer.borderColor = [UIColor blackColor].CGColor;
    
    picker =[[UIImagePickerController alloc]init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [tableview registerNib:[UINib nibWithNibName:@"FeedbackTableViewCell" bundle:nil] forCellReuseIdentifier:@"FeedbackTableViewCell"];
    details =@[
               @"Tap circle button to add notes",
               @"follow the manifest sequence and understands allotted time",
               @"Notes manifest maintainance need,communication to manager",
               @"Parking does not block traffic flow,is safe and efficient"
                ];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)selectPhoto:(id)sender {
    [self presentModalViewController:picker animated:YES];
}

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)editingInfo{
    imageView.image=image;
    [self dismissModalViewControllerAnimated:YES];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section==0) {
        return 1;
    } else {
        return 3;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FeedbackTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FeedbackTableViewCell" forIndexPath:indexPath];
    if(cell == nil){
        cell= [[FeedbackTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"FeedbackTableViewCell"];
    }
    
    if(indexPath.section==0){
        cell.contentTitle.text= details[0];
    }else{
        cell.contentTitle.text = details[indexPath.row+1];
    }
    
    cell.textLabel.numberOfLines=0;
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section==0){
        return (@"Summary of previous coachine");
    }else{
        return(@"Prepare to service the customer");
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}
@end
