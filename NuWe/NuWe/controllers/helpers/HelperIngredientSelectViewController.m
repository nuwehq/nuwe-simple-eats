//
//  HelperIngredientSelectViewController.m
//  Nutribu
//
//  Created by ChangShiYuan on 6/20/14.
//  Copyright (c) 2014 Chang. All rights reserved.
//

#import "HelperIngredientSelectViewController.h"
#import "Common.h"

@interface HelperIngredientSelectViewController ()
@property (nonatomic, weak) IBOutlet UIButton* btnDismiss;

@property (nonatomic, weak) IBOutlet UIImageView* tutorialImageViewQuantity;
@property (nonatomic, weak) IBOutlet UIImageView* tutorialImageViewManualEdits;

@end

@implementation HelperIngredientSelectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.btnDismiss setImage:[UIImage imageNamed:@"NuWe.bundle/btn_nav_x"] forState:UIControlStateNormal];
    
    [self.tutorialImageViewQuantity setImage:[UIImage imageNamed:@"NuWe.bundle/icon_help_level"]];
    [self.tutorialImageViewManualEdits setImage:[UIImage imageNamed:@"NuWe.bundle/icon_help_pencil"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - mesage handler

- (IBAction)onNoShow:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:NWUserSavedNoSelectIngrediantsHelp];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [self hideHelper];
}

@end
