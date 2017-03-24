//
//  Atleta.m
//  Exemplo Classe
//
//  Created by Usuário Convidado on 23/02/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import "Atleta.h"

@implementation Atleta

-(void) calcularIMC{
    self.imc = self.calcularIMC2;
}

-(float)calcularIMC2{
    return self.peso/pow(self.altura,2);
}

@end
