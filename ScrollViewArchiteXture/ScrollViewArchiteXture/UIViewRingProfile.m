//
//  UIViewRingProfile.m
//  ScrollViewArchiteXture
//
//  Created by Nicolás Hechim on 2/1/17.
//  Copyright © 2017 Nicolás Hechim. All rights reserved.
//

#import "UIViewRingProfile.h"

@implementation UIViewRingProfile

- (id)initProductNumber: (NSInteger)productNumber andFrame: (CGRect)frame {
    self = [[[NSBundle mainBundle] loadNibNamed:@"UIViewRingProfile" owner:self options:nil] objectAtIndex:0];
    
    [self initProduct: productNumber];
    
    self.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
    _scrollViewContainer.delegate = self;
    
    return self;
}

-(void) initProduct: (NSInteger) productNumber {
    //Init ImageViews
    NSString* pathImageViewTitle = productNumber == 1 ?
    @"HAPPI.png" : @"FANCY.png";
    NSString* pathImageViewBackground = productNumber == 1 ?
    @"HAPPI00.jpg" : @"FANCY00.jpg";
    NSString* pathImageViewDegradat = productNumber == 1 ?
    @"HAPPI19.jpg" : @"FANCY19.jpg";
    NSString* pathImageViewInfo = productNumber == 1 ?
    @"HAPPI_INFO_AN.png" : @"FANCY_INFO_AN.png";
    NSString* pathImageViewMap = productNumber == 1 ?
    @"HAPPI_MAP.jpg" : @"FANCY_MAP.jpg";
    
    UIImage* imageViewTitle = [UIImage imageNamed:pathImageViewTitle
                                         inBundle:nil
                    compatibleWithTraitCollection:nil];
    
    UIImage* imageViewBackground = [UIImage imageNamed:pathImageViewBackground
                                              inBundle:nil
                         compatibleWithTraitCollection:nil];
    
    UIImage* imageViewDegradat = [UIImage imageNamed:pathImageViewDegradat
                                            inBundle:nil
                       compatibleWithTraitCollection:nil];
    
    UIImage* imageViewMap = [UIImage imageNamed:pathImageViewMap
                                       inBundle:nil
                  compatibleWithTraitCollection:nil];
    
    UIImage* imageViewInfo = [UIImage imageNamed:pathImageViewInfo
                                        inBundle:nil
                   compatibleWithTraitCollection:nil];
    
    [_imageViewTitle setImage: imageViewTitle];
    [_imageViewBackground setImage: imageViewBackground];
    [_imageViewDegradat setImage: imageViewDegradat];
    [_imageViewInfo setImage: imageViewInfo];
    [_imageViewMap setImage: imageViewMap];
    
    [_scrollViewContainer setContentSize:CGSizeMake(self.frame.size.width,
                                                    [[UIScreen mainScreen] bounds].size.height +
                                                    _imageViewInfo.frame.size.height + 60)];
    [_imageViewBackground setAlpha:1];
    [_imageViewDegradat setAlpha:0];
    
    //Init ScrollViews
    NSString* pathImageViewImages = productNumber == 1 ?
    @"HAPPI_TIRA_IMATGES.png": @"FANCY_TIRA_IMATGES.png";
    NSString* pathImageViewProduct = productNumber == 1 ?
    @"HAPPI_PRODUCT.png": @"FANCY_PRODUCT.png";
    
    UIImage* imageViewImages = [UIImage imageNamed:pathImageViewImages
                                          inBundle:nil
                     compatibleWithTraitCollection:nil];
    
    UIImage* imageViewProduct = [UIImage imageNamed:pathImageViewProduct
                                           inBundle:nil
                      compatibleWithTraitCollection:nil];
    
    [_imageViewImages setImage: imageViewImages];
    [_imageViewProduct setImage: imageViewProduct];
    
    [_scrollViewProduct setContentSize:CGSizeMake(_imageViewProduct.bounds.size.width,
                                                  _imageViewProduct.bounds.size.height)];
    
    [_scrollViewCarousel setContentSize:CGSizeMake(_imageViewImages.bounds.size.width,
                                                   _imageViewImages.bounds.size.height)];
    
    //Init header
    NSString* pathimageViewBigTitle = productNumber == 1 ?
    @"HAPPI_TITLE_BIG.png": @"FANCY_TITLE_BIG.png";
    NSString* pathimageViewSmallTitle = productNumber == 1 ?
    @"HAPPI_TITLE_SMALL.png": @"FANCY_TITLE_SMALL.png";
    
    UIImage* imageViewBigTitle = [UIImage imageNamed:pathimageViewBigTitle
                                             inBundle:nil
                        compatibleWithTraitCollection:nil];
    
    UIImage* imageViewSmallTitle = [UIImage imageNamed:pathimageViewSmallTitle
                                               inBundle:nil
                          compatibleWithTraitCollection:nil];
        
    [_imageViewBigTitle setImage: imageViewBigTitle];
    [_imageViewSmallTitle setImage: imageViewSmallTitle];
    [_imageViewSmallTitle setAlpha:0];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    float alphaCalculated =  1-(scrollView.contentOffset.y/self.frame.size.height);
    [_imageViewDegradat setAlpha: fabsf(alphaCalculated - 1)];
    
    if(scrollView.contentOffset.y >
       self.frame.size.height / 1.5) {
        [_imageViewBigTitle setAlpha:0];
        [_imageViewSmallTitle setAlpha:1];
    }
    else
    {
        [_imageViewBigTitle setAlpha:1];
        [_imageViewSmallTitle setAlpha:0];
    }
}

@end
