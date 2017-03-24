//
//  MassagemAtleta.m
//  Exemplo Classe
//
//  Created by Usuário Convidado on 23/03/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import "MassagemAtleta.h"

@implementation MassagemAtleta

@synthesize atleta;

-(void)massagear{
    NSLog(@"Massageando o atleta %@ que tem %d anos", [atleta getNome], [atleta getIdade]);
    
}

@end
