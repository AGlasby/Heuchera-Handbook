//
//  Heucheras+CoreDataProperties.m
//  Heuchera Handbook
//
//  Created by Alan Glasby on 19/09/2016.
//  Copyright © 2016 Alan Glasby. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Heucheras+CoreDataProperties.h"

@implementation Heucheras (CoreDataProperties)

+ (NSFetchRequest<Heucheras *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Heucheras"];
}

@dynamic plantName;
@dynamic leafColour;
@dynamic flowerColour;

@end
