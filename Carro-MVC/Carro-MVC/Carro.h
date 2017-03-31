//
//  Carro.h
//  Carro-MVC
//
//  Created by Usuário Convidado on 30/03/17.
//  Copyright © 2017 Gabriel Ribeiro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Carro : NSObject

@property(nonatomic,retain) NSString* Name;
@property(nonatomic) BOOL isAutomatic;
@property(nonatomic) int HowManyPorts;
@property(nonatomic) float HowManuGallonsPerMiles;
@property(nonatomic) float Value;

-(Carro*) initWithName:(NSString*)_name andHowManyPorts:(int)_manyPorts
    andHowManyGallons:(float)_manyGallons
       andIsAutomatic:(BOOL)_isAutomatic;

-(NSString *)DistanceSpentWith:(float)_gallons;

-(void)makeTestDrive;

@end
