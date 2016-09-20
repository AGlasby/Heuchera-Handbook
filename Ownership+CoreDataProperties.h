//
//  Ownership+CoreDataProperties.h
//  Heuchera Handbook
//
//  Created by Alan Glasby on 20/09/2016.
//  Copyright © 2016 Alan Glasby. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Ownership+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Ownership (CoreDataProperties)

+ (NSFetchRequest<Ownership *> *)fetchRequest;

@property (nonatomic) BOOL owned;
@property (nonatomic) int16_t quantity;
@property (nonatomic) BOOL wanted;
@property (nullable, nonatomic, retain) Heucheras *plant;

@end

NS_ASSUME_NONNULL_END
