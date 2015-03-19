//
//  UIButton+RDSPhotoshopFontParams.m
//  Rambler
//
//  Created by Krapivenskiy Sergey on 09/09/14.
//  Copyright (c) 2014 Rambler. All rights reserved.
//

#import "UIButton+RDSPhotoshopFontParams.h"
#import "UILabel+RDSPhotoshopFontParams.h"

@implementation UIButton (RDSPhotoshopFontParams)

- (void)rds_setTracking:(CGFloat)tracking
{
    [self.titleLabel rds_setTracking:tracking];
}

- (void)rds_setLeading:(CGFloat)leading
{
    [self.titleLabel rds_setLeading:leading];
}

@end
