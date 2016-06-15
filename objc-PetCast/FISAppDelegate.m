//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISPet.h"
#import "FISDog.h"

@implementation FISAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISDog *poodle = [[FISDog alloc] init];
    NSLog(@"Can the poodle bark? %@", [poodle makeASound]);
    NSLog(@"Can the poodle assault the mailman? %@", [poodle assaultTheMailman]);
    FISPet *poodlePet = (FISPet *)poodle;
    NSLog(@"Can the Pet poodle still bark? %@", [poodlePet makeASound]);
    
    
    // Calling methods that are unique to the FISDog subclass does NOT work on objects of the FISPet superclass, even if you cast them to FISDog.
    FISPet *lassie = [[FISPet alloc] init];
    FISDog *lassieDog = (FISDog *)lassie;
    NSLog(@"What sound does the Lassie pseudo-dog Pet make? %@", [lassieDog makeASound]);
//    NSLog(@"What happens if Lassie tries to assault the mailman? %@", [lassieDog assaultTheMailman]);
    
    
    // Instead, you can initialize an FISDog object and assign it to an FISPet variable. This means that we can access the properties and methods that are unique to the FISDog class.
    FISPet *beethoven = [[FISDog alloc] init];
    FISDog *beethovenDog = (FISDog *)beethoven;
    NSLog(@"Beethoven is a FISDog inside a FISPet variable! Can he assault the mailman? %@", [beethovenDog
                                                                                              assaultTheMailman]);
    
    return YES;
}

@end
