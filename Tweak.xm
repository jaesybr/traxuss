// ModMenu.mm
#import <UIKit/UIKit.h>
#include "ModMenu.cpp"  // Include the C++ file

%hook AppDelegate // Replace AppDelegate with the appropriate class name from the target app

- (void)applicationDidBecomeActive:(UIApplication *)application {
    %orig;
    ModMenu modMenu;
    modMenu.showMenu();
}

%end