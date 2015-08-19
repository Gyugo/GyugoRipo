//
//  AdministrativeDepartment.h
//  Company
//
//  Created by Viktor on 17.08.15.
//  Copyright (c) 2015 Viktor. All rights reserved.
//

#import "CompanyMain.h"

@interface AdministrativeDepartment : CompanyMain
@property (strong, nonatomic) NSString* wellcome;

- (void)newInnovations;
- (void)setAdministrativeResolution;
- (void)quarterlyObjectives;
// Список квартальных премий
- (void)quarterlyObjectivesIT;
- (void)quarterlyObjectivesHR;
- (void)quarterlyObjectivesFinancial;
@end
