//
//  Heucheras+CoreDataProperties.h
//  Heuchera Handbook
//
//  Created by Alan Glasby on 20/09/2016.
//  Copyright © 2016 Alan Glasby. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Heucheras+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Heucheras (CoreDataProperties)

+ (NSFetchRequest<Heucheras *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *flowerColour;
@property (nullable, nonatomic, copy) NSString *leafColour;
@property (nullable, nonatomic, copy) NSString *plantName;
@property (nullable, nonatomic, retain) Ownership *ownedOrWanted;

@end

NS_ASSUME_NONNULL_END
