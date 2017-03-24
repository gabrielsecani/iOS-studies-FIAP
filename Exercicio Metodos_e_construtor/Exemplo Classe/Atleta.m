//
//  Atleta.m
//  Exemplo Classe
//
//  Created by Usuário Convidado on 23/02/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import "Atleta.h"
#import "ImcException.h"

@implementation Atleta

-(void) setNome:(NSString *)_nome{
    nome=_nome;
}
-(NSString *) getNome{
    return nome;
}
-(void) setIdade:(int)_idade{
    idade=_idade;
}
-(int) getIdade{
    return idade;
}

-(void)comerCarboidrato{
    NSLog(@"Comendo batata doce");
}
-(void)bebeIsotonico{
    NSLog(@"Bebendo Gatorade!");
}
-(void) calcularImcComPeso:(float) peso eAltura:(float) altura{
    
    if(altura>2.2){
        NSString *motivo = @"Altura não pode ser maior que 2.2 metros";
        
        NSException *e = [ImcException exceptionWithName:@"blahhblabla"
                                                  reason:motivo
                                                userInfo:nil];
        @throw e;
    }
    
    float imc;
    imc = peso / (altura * altura);
    NSLog(@"O IMC de %@ é %0.2f", self.getNome, imc);
}

-(NSString *) calcularSeuRendimentonaAguaWithTempoemHoras:(float) horas
                                                andMetros:(float) metros{
    float resultado;
    resultado = metros / horas;
    NSString *texto = [NSString stringWithFormat:@"O meu rendimento é %0.2f metros por hora", resultado];
    return texto;
}

-(Atleta *) initWithNome:(NSString *)_nome andIdade:(int)_idade{
    self = [super init];
    if (self){ //Se a inicialização foi ok
        [self setNome:_nome];
        [self setIdade:_idade];
            
        //nome = _nome;
        //idade = _idade;
    }
    return self;
}

@end
