//
//  main.m
//  Exemplo Classe
//
//  Created by Usuário Convidado on 23/02/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Atleta.h"
#import "MassagemAtleta.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Atleta *a = [[Atleta alloc]init];
        [a setNome:@"Maria Silva"];
        [a setIdade:25];
        NSLog(@"Iron Man %@ %d anos",[a getNome],[a getIdade]);
        [a calcularImcComPeso:60 eAltura:1.70];
        NSLog(@"%@",[a calcularSeuRendimentonaAguaWithTempoemHoras:1.5 andMetros:5000]);
        
        
        Atleta *a2 = [[Atleta alloc]initWithNome:@"Jose" andIdade:40];
        NSLog(@"Iron Man %@ %d anos",[a2 getNome],[a2 getIdade]);
        [a2 calcularImcComPeso:120 eAltura:1.87];
        NSLog(@"%@",[a2 calcularSeuRendimentonaAguaWithTempoemHoras:1.5 andMetros:5000]);

        
        MassagemAtleta *m=[[MassagemAtleta alloc]init];
        //
        //[m setAtleta:a];
        m.atleta=a;
        
        [m massagear];
        
        
        @try {
            [a2 calcularImcComPeso:90 eAltura:2.7];
        } @catch (NSException *exception) {
            NSLog(@"Erro: %@", [exception reason]);
        } @finally {
            
        }
    
        
        [a comerCarboidrato];
        [a2 bebeIsotonico];
    }
    return 0;
}
