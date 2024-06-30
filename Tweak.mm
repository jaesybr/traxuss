// Tweak.mm
#import <UIKit/UIKit.h>
#include "ModMenu.cpp"
#import "ModMenuViewController.h"

%hook AppDelegate

- (void)applicationDidBecomeActive:(UIApplication *)application {
    %orig;
    ModMenu modMenu;
    modMenu.showMenu();
    
    ModMenuViewController *vc = [[ModMenuViewController alloc] init];
    vc.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:vc animated:YES completion:nil];
}

%end