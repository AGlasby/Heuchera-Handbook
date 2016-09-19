//
//  ViewController.m
//  Heuchera Handbook
//
//  Created by Alan Glasby on 19/09/2016.
//  Copyright © 2016 Alan Glasby. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "Heucheras+CoreDataClass.h"


@interface ViewController ()

@property (nonatomic) AppDelegate *appDelegate;
@property (weak, nonatomic) IBOutlet UILabel *objectCountLbl;
@property (weak, nonatomic) IBOutlet UILabel *objectsLbl;
@property (weak, nonatomic) IBOutlet UITextField *plantNameTxtFld;
@property (weak, nonatomic) IBOutlet UITextField *leafColourTxtFld;
@property (weak, nonatomic) IBOutlet UITextField *flowerColourTxtFld;

- (IBAction)storeDataBtnTapped:(id)sender;
- (IBAction)clearDataBtnTapped:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.appDelegate = [[UIApplication sharedApplication] delegate];

    [self updateLogList];
}


 - (IBAction)storeDataBtnTapped:(id)sender {

     Heucheras *heuchera = [self.appDelegate createHeuchera];
     heuchera.plantName = self.plantNameTxtFld.text;;
     heuchera.leafColour = self.leafColourTxtFld.text;
     heuchera.flowerColour = self.flowerColourTxtFld.text;
     [self.appDelegate saveContext];

     [self updateLogList];

 }

-(void)updateLogList {
    NSManagedObjectContext *moc = [[self.appDelegate persistentContainer] viewContext];
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Heucheras"];
    NSError *error = nil;
    NSArray *results = [moc executeFetchRequest:request error:&error];
    if(!results) {
        NSLog(@"Error fetching Heucheras results from persistent store: %@\n%@", [error localizedDescription], [error userInfo]);
        abort();
    }
    NSMutableString *buffer = [NSMutableString stringWithString:@""];
    for(Heucheras *h in results) {
        [buffer appendFormat:@" Name: %@\n Leaves: %@\n Flowers: %@\n \n", h.plantName, h.leafColour, h.flowerColour, nil];
    }
    self.objectsLbl.text = buffer;
}

 - (IBAction)clearDataBtnTapped:(id)sender {
     NSManagedObjectContext *moc = [[self.appDelegate persistentContainer] viewContext];
     NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Heucheras"];
     NSError *error = nil;
     NSArray *results = [moc executeFetchRequest:request error:&error];
     if(!results) {
         NSLog(@"Error fetching Heucheras results from persistent store: %@\n%@", [error localizedDescription], [error userInfo]);
         abort();
     }
     for(Heucheras *h in results) {
         [moc deleteObject:h];
     }
     [self.appDelegate saveContext];
     [self updateLogList];
 }

@end
