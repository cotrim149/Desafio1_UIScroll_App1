//
//  VCLAppDelegate.m
//  Desafio1_UIScroll_App1
//
//  Created by Victor de Lima on 22/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "VCLAppDelegate.h"
#import "VCLView.h"

@implementation VCLAppDelegate


-(VCLView*) pessoaNome:(NSString*)nome idade:(NSString*)idade refImagem:(NSString*) refImagem pagina:(int) pagina{
    
    VCLView *pessoa = [[VCLView alloc]initWithFrame:CGRectMake(0, 0, self.window.bounds.size.width, self.window.bounds.size.height)];
    
    [pessoa iniciaAtributos];
    
    pessoa.nome.text = nome;
    pessoa.idade.text = idade;
    
    [pessoa.idade setFrame:CGRectMake(20+(pagina*self.window.bounds.size.width), self.window.center.y+120, 50, 60)];

    [pessoa.nome setFrame:CGRectMake(20+(pagina*self.window.bounds.size.width), self.window.center.y+150, 200, 60)];
    
    [pessoa.foto setImage:[UIImage imageNamed:refImagem]];
    pessoa.foto.frame = CGRectMake(10+(pagina*self.window.bounds.size.width) , 20, 300 , 400);
    
    [pessoa addSubview:pessoa.nome];
    [pessoa addSubview:pessoa.idade];
    [pessoa addSubview:pessoa.foto];
    
    return pessoa;

}

-(NSMutableArray*)addPessoas{
    
    NSMutableArray *pessoas = [[NSMutableArray alloc] init];
    
    
    [pessoas addObject:[self pessoaNome:@"Lucas Andrade" idade:@"20" refImagem:@"IMG_0020.JPG" pagina:0]];
    [pessoas addObject:[self pessoaNome:@"Rhieldo" idade:@"23" refImagem:@"IMG_0021.JPG" pagina:1]];
    [pessoas addObject:[self pessoaNome:@"Victor Cotrim" idade:@"23" refImagem:@"IMG_0022.JPG" pagina:2]];
    [pessoas addObject:[self pessoaNome:@"Jonathan" idade:@"21" refImagem:@"IMG_0023.JPG" pagina:3]];
    [pessoas addObject:[self pessoaNome:@"Rubens" idade:@"23" refImagem:@"IMG_0024.JPG" pagina:4]];
    [pessoas addObject:[self pessoaNome:@"Lucas dos Santos" idade:@"19" refImagem:@"IMG_0025.JPG" pagina:5]];
    [pessoas addObject:[self pessoaNome:@"Braga" idade:@"56" refImagem:@"IMG_0026.JPG" pagina:6]];
    [pessoas addObject:[self pessoaNome:@"Alexandre" idade:@"32" refImagem:@"IMG_0027.JPG" pagina:7]];
    [pessoas addObject:[self pessoaNome:@"Cayke" idade:@"23" refImagem:@"IMG_0028.JPG" pagina:8]];
    [pessoas addObject:[self pessoaNome:@"Augusto" idade:@"20" refImagem:@"IMG_0029.JPG" pagina:9]];
    [pessoas addObject:[self pessoaNome:@"Paulo Roberto" idade:@"24" refImagem:@"IMG_0030.JPG" pagina:10]];
    [pessoas addObject:[self pessoaNome:@"Paulo Campos" idade:@"24" refImagem:@"IMG_0031.JPG" pagina:11]];
    [pessoas addObject:[self pessoaNome:@"Yuri" idade:@"25" refImagem:@"IMG_0032.JPG" pagina:12]];
    [pessoas addObject:[self pessoaNome:@"Fabio" idade:@"25" refImagem:@"IMG_0033.JPG" pagina:13]];
    [pessoas addObject:[self pessoaNome:@"Lafayette" idade:@"20" refImagem:@"IMG_0035.JPG" pagina:14]];
    
    
    return pessoas;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect;
    bigRect.size.width *=15;

    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    scrollView.pagingEnabled = YES;
    [self.window addSubview:scrollView];
    scrollView.contentSize = bigRect.size;
    
    NSMutableArray *album = [[NSMutableArray alloc] init];
    
    album = [self addPessoas];
    
    UIImageView *foto = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"IMG_0031.JPG"]];
    foto.frame = CGRectMake(20, 20, 300, 300);
    
    UILabel *nome = [[UILabel alloc] initWithFrame:CGRectMake(20, self.window.center.y+100, 50, 50)];
    nome.text=@"Texto";
    
    for(int i=0; i< [album count]; i++){
        [scrollView addSubview:[album objectAtIndex:i]];
        
    }
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
