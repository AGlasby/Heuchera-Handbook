//
//  Ownership+CoreDataProperties.m
//  Heuchera Handbook
//
//  Created by Alan Glasby on 20/09/2016.
//  Copyright © 2016 Alan Glasby. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Ownership+CoreDataProperties.h"

@implementation Ownership (CoreDataProperties)

+ (NSFetchRequest<Ownership *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Ownership"];
}

@dynamic owned;
@dynamic quantity;
@dynamic wanted;
@dynamic plant;

@end
