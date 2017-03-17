//
//  Enfermeira.m
//  Exercício POO-Enfermeira
//
//  Created by Usuário Convidado on 09/03/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import "Enfermeira.h"

@implementation Enfermeira

-(void)setNome:(NSString *)_nome{
    nome = _nome;
}
-(NSString *)getNome{
    return nome;
}
-(void)setCoren:(int)_coren{
    coren = _coren;
}
-(int)getCoren{
    return coren;
}
-(void)setPlantao:(BOOL)_plantao{
    plantao = _plantao;
}
-(BOOL)getPlantao{
    return plantao;
}
-(void)setSalario:(float)_salario{
    salario = _salario;
}
-(float)getSalario{
    return salario;
}


-(Enfermeira*) initWithNome:(NSString *)_nome
                 andPlantao:(BOOL)_plantao
                   andCoren:(int)_coren
                 andSalario:(float)_salario{
    self = [super init];
    if(self){
        [self setNome:_nome];
        [self setPlantao:_plantao];
        [self setCoren:_coren];
        [self setSalario:_salario];
    }
    return self;
}

-(NSString *)prepararBanhoComTemperatura:(float)_graus
                                  eTempo:(int)_minutos{
    NSString *texto;
    texto=[NSString stringWithFormat:@"Seu banho será de %d minutos com a temperatura em %f graus", _minutos, _graus];
    return texto;
}

-(float)medicarComMl:(float)_mililitros
         eFrequencia:(int)_frequencia{
    return _mililitros * _frequencia;
}


@end
