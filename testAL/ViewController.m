

#import "ViewController.h"
#import "AViewController.h"
//#import "UIView+AutoLayout.h"
#import "PureLayout.h"

@interface ViewController ()
@property (strong) AViewController *aVC;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.aVC = [[AViewController alloc] init];
    self.aVC.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.aVC.view];
    [self.aVC.view autoPinEdgeToSuperviewEdge:ALEdgeLeft withInset:0];
    [self.aVC.view autoSetDimension:ALDimensionHeight toSize:100];
    [self.aVC.view autoSetDimension:ALDimensionWidth toSize:320];
    NSLayoutConstraint *constraint = [self.aVC.view autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:-100];
    [self.aVC.view layoutIfNeeded];
    [UIView animateWithDuration:2 animations:^{
        constraint.constant = -25;
        [self.aVC.view layoutIfNeeded];
    }];
    
}


@end
