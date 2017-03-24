//
//  Atleta.h
//  Exemplo Classe
//
//  Created by Usuário Convidado on 23/02/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlimentoLiquidoSolido.h"

@interface Atleta : NSObject <AlimentoLiquidoSolido>{
    NSString *nome;
    int idade;
}

-(void) setNome:(NSString *)_nome;
-(NSString *) getNome;
-(void) setIdade:(int)_idade;
-(int) getIdade;

-(void) calcularImcComPeso:(float) peso eAltura:(float) altura;
-(NSString *) calcularSeuRendimentonaAguaWithTempoemHoras:(float) horas
                                                andMetros:(float) metros;
//construtor abaixo
-(Atleta *) initWithNome:(NSString *)_nome andIdade:(int)_idade;

@end
