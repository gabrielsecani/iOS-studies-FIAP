//
//  Enfermeira.h
//  Exercício POO-Enfermeira
//
//  Created by Usuário Convidado on 09/03/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Enfermeira : NSObject{
    NSString *nome;
    int coren;
    BOOL plantao;
    float salario;
}

-(void)setNome:(NSString *)_nome;
-(NSString *)getNome;

-(void)setCoren:(int)_coren;
-(int)getCoren;

-(void)setPlantao:(BOOL)_plantao;
-(BOOL)getPlantao;

-(void)setSalario:(float)_salario;
-(float)getSalario;

-(Enfermeira*) initWithNome:(NSString *)_nome
                 andPlantao:(BOOL)_plantao
                   andCoren:(int)_coren
                 andSalario:(float)_salario;

-(NSString *)prepararBanhoComTemperatura:(float)_graus
                                  eTempo:(int)_minutos;

-(float)medicarComMl:(float)_mililitros
                                  eFrequencia:(int)_frequencia;


@end
