//
//  ViewController.m
//  ScrollViewArchiteXture
//
//  Created by Nicolás Hechim on 2/1/17.
//  Copyright © 2017 Nicolás Hechim. All rights reserved.
//

#import "RingProfile_VC.h"
#import "UIViewRingProfile.h"

@interface RingProfile_VC ()
{
    NSInteger productsCount;
}
@end

@implementation RingProfile_VC

- (void)viewDidLoad {
    [super viewDidLoad];
    productsCount = 2;
    UIViewRingProfile *viewProduct;
    
    for (int i = 0; i < productsCount; i++) {
        CGRect frame = CGRectMake(i * self.view.frame.size.width,
                                  0,
                                  self.view.frame.size.width,
                                  self.view.frame.size.height);
        viewProduct = [[UIViewRingProfile alloc] initProductNumber: i + 1 andFrame: frame];
        [_scrollViewContainer addSubview:viewProduct];
    }
    
    [_scrollViewContainer setContentSize:
        CGSizeMake(viewProduct.bounds.size.width * productsCount,
                   viewProduct.bounds.size.height)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
