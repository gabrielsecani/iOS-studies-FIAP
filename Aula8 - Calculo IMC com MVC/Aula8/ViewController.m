//
//  ViewController.m
//  Aula8
//
//  Created by Usuário Convidado on 23/03/17.
//  Copyright © 2017 Gabriel Ribeiro. All rights reserved.
//

#import "ViewController.h"
#import "Atleta.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnCalcular:(id)sender {

    Atleta *a=[[Atleta alloc]init];
    
    [a setPeso: self.txtPeso.text.floatValue];
    a.altura=self.txtAltura.text.floatValue;
    
    a.nome = self.txtAtleta.text;
    
    [a calcularIMC ];
    self.txtIMC.text = [NSString stringWithFormat:@"%f", a.imc];
//    self.txtIMC.text = [NSString stringWithFormat:@"%0.2f", a.imc];
    
}

@end
