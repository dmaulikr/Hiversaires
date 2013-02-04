//
//  DozenalViewController.m
//  Dozenal Clock
//
//  Created by Devine Lu Linvega on 2013-01-31.
//  Copyright (c) 2013 XXIIVV. All rights reserved.
//

#import "DozenalViewController.h"

NSString        *worldOrientation[4] = {@"north",@"east",@"south",@"west"};
NSString        *worldNode[200][4][20] = {0};

int             userNode;
int             userOrientation;
int             userAction;

@interface DozenalViewController ()
@end

@implementation DozenalViewController


- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    [self moveCheck];
    
    worldNode[0][0][1] = @"The Hugly Bathroom";
    worldNode[0][2][0] = @"2";
    worldNode[0][3][11] = @"puzzle 1";
    worldNode[0][1][11] = @"puzzle 2";
    
    worldNode[2][0][1] = @"The Dicusting Kitchen";
    worldNode[2][0][0] = @"0";
    worldNode[2][1][11] = @"Puzzle 3";
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)moveLeft:(id)sender {
    
    userOrientation = userOrientation < 3 ? userOrientation+1 : 0;
    
    [self moveCheck];
    
}

- (IBAction)moveRight:(id)sender {
    
    userOrientation = userOrientation == 0 ? 3 : userOrientation-1;
    
    [self moveCheck];
    
}

- (IBAction)moveForward:(id)sender {
    
    userNode = [ worldNode[userNode][userOrientation][0] intValue];
    
    [self moveCheck];
    
}


- (void)moveCheck
{
    
    self.moveForward.hidden = worldNode[userNode][userOrientation][0] ? NO : YES;
    self.moveAction.hidden = worldNode[userNode][userOrientation][11] ? NO : YES;
    self.moveAction.titleLabel.text = worldNode[userNode][userOrientation][11];
    
    self.debugOrientation.text = worldOrientation[userOrientation];
    self.debugNode.text = [NSString stringWithFormat:@"%d",userNode];
    self.debugLocation.text = worldNode[userNode][0][1];
    
}




@end
