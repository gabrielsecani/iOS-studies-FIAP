//
//  Carro.m
//  Carro-MVC
//
//  Created by Usuário Convidado on 30/03/17.
//  Copyright © 2017 Gabriel Ribeiro. All rights reserved.
//

#import "Carro.h"

@implementation Carro

@synthesize Name;
@synthesize isAutomatic;
@synthesize HowManyPorts;
@synthesize HowManuGallonsPerMiles;
@synthesize Value;

-(void)makeTestDrive{
    NSLog(@"Making a mark on the road!");
}


-(Carro*) initWithName:(NSString*)_name andHowManyPorts:(int)_manyPorts
     andHowManyGallons:(float)_manyGallons
        andIsAutomatic:(BOOL)_isAutomatic{
    Carro * carro = [Carro init];
    
    carro.Name=_name;
    carro.HowManuGallonsPerMiles=_manyGallons;
    carro.HowManyPorts=_manyPorts;
    carro.isAutomatic=_isAutomatic;
    
    return carro;
}

-(NSString *)DistanceSpentWith:(float)_gallons{

    return [NSString stringWithFormat: @"%f", (_gallons*HowManuGallonsPerMiles)];

}

@end
