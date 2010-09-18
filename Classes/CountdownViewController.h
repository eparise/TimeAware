//
//  CountdownViewController.h
//  TimeAware
//
//  Created by John Nichols on 9/8/10.
//  Copyright 2010 N/A. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CountdownViewController : UIViewController {
	
	IBOutlet UIDatePicker *startDatePicker;
	IBOutlet UIDatePicker *endDatePicker;
	IBOutlet UIButton *submitStartDateButton;
	IBOutlet UIButton *submitEndDateButton;
	IBOutlet UIButton *reloadButton;
	
	IBOutlet UILabel *answerLabel;
	
	NSDate *countdownStartDate;
	NSDate *countdownEndDate;

}
@property (nonatomic,retain) IBOutlet UIDatePicker *startDatePicker;
@property (nonatomic,retain) IBOutlet UIDatePicker *endDatePicker;
@property (nonatomic,retain) IBOutlet UIButton *submitStartDateButton;
@property (nonatomic,retain) IBOutlet UIButton *submitEndDateButton;
@property (nonatomic,retain) IBOutlet UIButton *reloadButton;
@property (nonatomic,retain) IBOutlet UILabel *answerLabel;
@property (nonatomic,retain) NSDate *countdownStartDate;
@property (nonatomic,retain) NSDate *countdownEndDate;

-(IBAction)submitStartDateButtonPressed;
-(IBAction)submitEndDateButtonPressed;
-(IBAction)countdownReload;

@end
