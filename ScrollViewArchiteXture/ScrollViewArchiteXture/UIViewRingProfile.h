//
//  UIViewRingProfile.h
//  ScrollViewArchiteXture
//
//  Created by Nicolás Hechim on 2/1/17.
//  Copyright © 2017 Nicolás Hechim. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface UIViewRingProfile : UIView<UIScrollViewDelegate>
//1. Background
@property (strong, nonatomic) IBOutlet UIImageView *imageViewBackground;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewDegradat;

//2. Header
@property (strong, nonatomic) IBOutlet UIImageView *imageViewBigTitle;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewSmallTitle;

//3. ScrollView container
@property (strong, nonatomic) IBOutlet UIScrollView *scrollViewContainer;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewTitle;

//3.1 View Info
@property (strong, nonatomic) IBOutlet UIImageView *imageViewInfo;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewMap;

//3.1.1 ScrollView Carousel
@property (strong, nonatomic) IBOutlet UIScrollView *scrollViewCarousel;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewImages;

//3.1.2 ScrollView Product
@property (strong, nonatomic) IBOutlet UIScrollView *scrollViewProduct;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewProduct;


- (id)initProductNumber: (NSInteger)productNumber andFrame: (CGRect)frame;

@end
