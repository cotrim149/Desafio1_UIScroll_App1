//
//  VCLView.h
//  Desafio1_UIScroll_App1
//
//  Created by Victor de Lima on 22/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCLView : UIView

@property (nonatomic)UILabel *nome;
@property (nonatomic)UILabel *idade;
@property (nonatomic)UIImageView *foto;

-(void) iniciaAtributos;

@end
