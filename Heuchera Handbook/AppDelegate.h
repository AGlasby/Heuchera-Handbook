//
//  AppDelegate.h
//  Heuchera Handbook
//
//  Created by Alan Glasby on 19/09/2016.
//  Copyright © 2016 Alan Glasby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Heucheras+CoreDataClass.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (Heucheras *)createHeuchera;
- (void)saveContext;


@end

