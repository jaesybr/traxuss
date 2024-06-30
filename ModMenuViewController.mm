// ModMenuViewController.mm
#import "ModMenuViewController.h"

@implementation ModMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc] initWithFrame:self.view.bounds];
    label.text = @"Mod Menu";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
}

@end