//
//  FirstViewController.h
//  TimeAware
//
//  Created by John Nichols on 9/8/10.
//  Copyright N/A 2010. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FirstViewController : UIViewController {
	
	int timeInterval;
	
	NSCalendar *gregorian;
	NSMutableArray *numberDaysPicker;
	NSDate *dateFromPicker;
	NSDate *nowOne;
	
	IBOutlet UIDatePicker *startDate;
	IBOutlet UIPickerView *numDays;
	IBOutlet UILabel *dateAnswerLabel;
	IBOutlet UIButton *submitDateButton;
	IBOutlet UIButton *submitNumberButton;
	IBOutlet UIButton *reloadButton;



}
@property(nonatomic,retain) NSCalendar *gregorian;
@property(nonatomic,retain) IBOutlet UIDatePicker *startDate;
@property(nonatomic,retain) IBOutlet UIPickerView *numDays;
@property(nonatomic,retain) IBOutlet UILabel *dateAnswerLabel;
@property(nonatomic,retain) IBOutlet UIButton *submitDateButton;
@property(nonatomic,retain) IBOutlet UIButton *submitNumberButton;
@property(nonatomic,retain) IBOutlet UIButton *reloadButton;
@property(nonatomic,retain) NSMutableArray *numberDaysPicker;
@property(nonatomic,retain) NSDate *dateFromPicker;
@property(nonatomic,retain) NSDate *nowOne;


-(IBAction)submitDateButtonClicked;
-(IBAction)submitNumberButtonClicked;
-(IBAction)reloadButtonClicked;
-(void)myReload;

@end
