//
//  MassagemAtleta.h
//  Exemplo Classe
//
//  Created by Usuário Convidado on 23/03/17.
//  Copyright © 2017 Agesandro Scarpioni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Atleta.h"


@interface MassagemAtleta : NSObject

@property (nonatomic,retain) Atleta *atleta;

-(void)massagear;

@end
