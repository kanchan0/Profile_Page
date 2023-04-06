//
//  TableViewController.m
//  profile_page
//
//  Created by Tiwari, Kanchan Kumar (Cognizant) on 18/02/21.
//

#import "TableViewController.h"

@interface TableViewController (){
    NSArray *details;
}

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    daataArray =[[NSMutableArray alloc]init];
    [daataArray addObject:@"Summary of previous coachine"];
    [daataArray addObject: @"Tap circle button to add notes"];
    [daataArray addObject: @"Prepare to service the customer"];
    [daataArray addObject:@"follow the manifest sequence and understands allotted time"];
    [daataArray addObject:@"Notes manifest maintainance need,communication to manager"];
    [daataArray addObject:@"Parking does not block traffic flow,is safe and efficient"];
    [daataArray addObject:@""];

    self.mtableView.delegate=(id)self;
    self.mtableView.dataSource=(id)self;
}
//- (IBAction)onTouchShowCheckbox:(id)sender {
//
//    [_mtableView setEditing:YES animated:YES];
//}
- (IBAction)onClickShowCheckboxes:(id)sender {
    [self.mtableView setEditing:YES animated:YES];
}
#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [daataArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [daataArray objectAtIndex:indexPath.row];
    cell.tintColor =[UIColor blueColor];
    return cell;
}

#pragma mark - table view delegate
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 3;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"user selected %@",[daataArray objectAtIndex:indexPath.row]);
}
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
     NSLog(@"user de-selected %@",[daataArray objectAtIndex:indexPath.row]);
}

@end
