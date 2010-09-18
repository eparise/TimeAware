//
//  FirstViewController.m
//  TimeAware
//
//  Created by John Nichols on 9/8/10.
//  Copyright N/A 2010. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController
@synthesize gregorian,numberDaysPicker,dateFromPicker,startDate,numDays,dateAnswerLabel,submitDateButton,submitNumberButton,reloadButton,nowOne;

- (void)dealloc {
	[nowOne release];
	[dateAnswerLabel release];
	[reloadButton release];
	[submitDateButton release];
	[submitNumberButton release];
	[numDays release];
	[startDate release];
	[dateFromPicker release];
	[numberDaysPicker release];
	[gregorian release];
    [super dealloc];
}




// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	//allocate instances
	gregorian = [[NSCalendar alloc]initWithCalendarIdentifier:NSGregorianCalendar];
	numberDaysPicker = [[NSMutableArray alloc]init];
	nowOne = [[NSDate alloc]init];
	
	for (int x = 1; x < 32; x++)  {
		[numberDaysPicker addObject:[NSString stringWithFormat:@"%i",x]];
	}
	//make sure everything is clear
	[self myReload];
}


-(void)submitDateButtonClicked  {
	//grab the date from the date picker
	dateFromPicker = [startDate date];
	
	//convert date into string, then show in label
	//NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	//[formatter setDateFormat:@"dd MM yyyy"];
	//NSString *stringFromDate = [formatter stringFromDate:dateFromPicker];
	//dateAnswerLabel.text = stringFromDate;
	
	
	//hide datepicker and submitDateButton; show numdays and submitDateButton
	startDate.hidden = YES;
	submitDateButton.hidden = YES;
	
	numDays.hidden = NO;
	submitNumberButton.hidden = NO;
	
	
	//release
	//[formatter release];
}


-(void)submitNumberButtonClicked  {
	//grab data from days picker
	NSDate *endDate = [[NSDate alloc]init];
	NSTimeInterval aTimeInterval = timeInterval;
	endDate = [dateFromPicker addTimeInterval:aTimeInterval];
//	NSLog(@"%@",endDate);
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setDateFormat:@"MM dd yyyy"];
	NSString *stringFromDate = [formatter stringFromDate:endDate];
	dateAnswerLabel.text = stringFromDate;
	
	//release
	[formatter release];
	
}

-(IBAction)reloadButtonClicked  {
	
	[self myReload];
		
}

-(void)myReload  {
	//hide numdays and submitnumberbutton; show startdate and submitdatebutton
	startDate.hidden = NO;
	submitDateButton.hidden = NO;
	
	numDays.hidden = YES;
	submitNumberButton.hidden = YES;
	
	//clear instances
	dateAnswerLabel.text = nil;
	
	//self.dateFromPicker. = nowOne;  //setting the date picker to today's date
}


#pragma mark picker view stuff
			 
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
		return 1;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
				 
	 return [numberDaysPicker count];
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
				 
	 return [numberDaysPicker objectAtIndex:row];
}
	
- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
	
	//from the row number make the number of days
	timeInterval = 24*60*60*(row+1);
	
}

#pragma mark regular delegate stuff			 
			 
- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}



@end
