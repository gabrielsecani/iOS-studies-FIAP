//
//  Atleta.h
//  Exemplo Classe
//
//  Created by Usuário Convidado on 23/02/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Atleta : NSObject

@property (nonatomic, retain) NSString *nome;
@property (nonatomic) float peso;
@property (nonatomic) float altura;
@property (nonatomic) float imc;


-(void)calcularIMC;

-(float)calcularIMC2;


@end
