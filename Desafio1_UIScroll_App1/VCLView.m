//
//  VCLView.m
//  Desafio1_UIScroll_App1
//
//  Created by Victor de Lima on 22/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "VCLView.h"

@implementation VCLView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void) iniciaAtributos{
    self.nome = [[UILabel alloc]init];
    self.idade = [[UILabel alloc] init];
    self.foto = [[UIImageView alloc] init];

}

-(instancetype)initWithPosicions:(CGPoint) nome andPosicion:(CGPoint)idade andPosFoto:(CGPoint) foto{
    
    self.nome = [[UILabel alloc]init];
    self.idade = [[UILabel alloc] init];
    self.foto = [[UIImageView alloc] init];
    
    self->_posNome.x = nome.x;
    self->_posNome.y = nome.y;

    self->_posIdade.x = idade.x;
    self->_posIdade.y = idade.y;
    
    
    self->_posFoto.x = foto.x;
    self->_posFoto.y = foto.y;
    return self;
}

@end
