//
//  main.m
//  Exercício POO-Enfermeira
//
//  Created by Usuário Convidado on 09/03/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Enfermeira.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Enfermeira *e = [[Enfermeira alloc]init];
        [e setNome:@"Geoverderson"];
        [e setSalario:7500];
        [e setCoren:123456];
        [e setPlantao:YES];
        NSLog(@"Nome: %@ - Salário %0.2f",[e getNome], [e getSalario]);
        NSLog(@"Conselho Regional de Enfermagem - COREN: %d", [e getCoren]);
        
        //mostrando o boleano com IF TERNÁRIO
        NSLog(@"Enfermeiro atende Plantão %@", [e getPlantao]? @"SIM":@"NÃO");
        [e setPlantao:NO];
        //mostrando o boleano com IF Composto
        NSString *resposta;
        if ([e getPlantao]){
            resposta = @"SIM";}
        else{
            resposta = @"NÃO";}
        
        NSLog(@"Enfermeiro atende Plantão %@", resposta);
        
        
        //usando a porra do construtor
        Enfermeira *e2  = [[Enfermeira alloc] initWithNome:@"Pablo Escobar"
                                                  andPlantao:NO
                                                    andCoren:666
                                                  andSalario:15000];
        
        NSLog(@"Nome: %@ - Salário %0.2f",[e2 getNome], [e2 getSalario]);
        NSLog(@"Conselho Regional de Enfermagem - COREN: %d", [e2 getCoren]);
        //mostrando o boleano com IF TERNÁRIO
        NSLog(@"Enfermeiro atende Plantão %@", [e getPlantao]? @"SIM":@"NÃO");
        
        NSLog(@"%0.3f", [e2 medicarComMl:10.75 eFrequencia:3] );
        NSLog(@"%@", [e2 prepararBanhoComTemperatura:40 eTempo:40] );

    
    }
    return 0;
}
