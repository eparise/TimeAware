    //
//  CountdownViewController.m
//  TimeAware
//
//  Created by John Nichols on 9/8/10.
//  Copyright 2010 N/A. All rights reserved.
//

#import "CountdownViewController.h"


@implementation CountdownViewController
@synthesize startDatePicker,endDatePicker,submitStartDateButton,submitEndDateButton,reloadButton,answerLabel,countdownStartDate,countdownEndDate;

- (void)dealloc {
	[countdownEndDate release];
	[countdownStartDate release];
	[answerLabel release];
	[reloadButton release];
	[submitEndDateButton release];
	[submitStartDateButton release];
	[startDatePicker release];
	[endDatePicker release];
    [super dealloc];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	//initialte instances
	countdownStartDate = [[NSDate alloc]init];
	countdownEndDate = [[NSDate alloc]init];
	
	[self countdownReload];

}



-(void)submitStartDateButtonPressed  {
	//get start date from picker
	countdownStartDate = [startDatePicker date];
	
	//show and hide
	submitStartDateButton.hidden = YES;
	startDatePicker.hidden = YES;
	
	submitEndDateButton.hidden = NO;
	endDatePicker.hidden = NO;
	
}

-(void)submitEndDateButtonPressed  {
	//get end date from picker
	countdownEndDate = [endDatePicker date];
	
	//calulate different
	NSTimeInterval timeInterval = [countdownEndDate timeIntervalSinceDate:countdownStartDate]; 
	timeInterval = timeInterval/(24*60*60);   //converts seconds to days
	NSLog(@"%g",timeInterval);
	
	//print to label
	NSString *myAnswer = [NSString stringWithFormat:@"%g",timeInterval];
	answerLabel.text = myAnswer;
	
}

-(void)countdownReload  {
	//hide and show proper buttons
	submitStartDateButton.hidden = NO;
	startDatePicker.hidden = NO;
	
	submitEndDateButton.hidden = YES;
	endDatePicker.hidden = YES;
		
	answerLabel.text = nil;
	
}









/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}




@end
