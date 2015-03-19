//
//  UILabel+RDSPhotoshopFontParams
//  Rambler
//
//  Created by Krapivenskiy Sergey on 18/03/15.
//  Copyright (c) 2015 Rambler. All rights reserved.
//

#import "UILabel+RDSPhotoshopFontParams.h"

@implementation UILabel (RDSPhotoshopFontParams)

- (void)rds_setTracking:(CGFloat)tracking
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    
    NSRange wholeTextRange = NSMakeRange(0, self.attributedText.length);
    NSDictionary *attributes = [self.attributedText attributesAtIndex:0 effectiveRange:&wholeTextRange];
    UIFont *font = attributes[NSFontAttributeName];
    
    CGFloat kerningValue = tracking / 1000 * font.pointSize;
    
    [attributedString addAttribute:NSKernAttributeName
                             value:[NSNumber numberWithFloat:kerningValue]
                             range:wholeTextRange];
    
    [self setAttributedText:attributedString];
}

- (void)rds_setLeading:(CGFloat)leading
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithAttributedString:self.attributedText];
    
    NSRange wholeTextRange = NSMakeRange(0, self.attributedText.length);
    NSDictionary *attributes = [self.attributedText attributesAtIndex:0 effectiveRange:&wholeTextRange];
    UIFont *font = attributes[NSFontAttributeName];
    
    CGFloat lineSpacingValue = leading / font.pointSize;
    
    
    
    NSMutableParagraphStyle *newParagraphStyle = [attributes[NSParagraphStyleAttributeName] mutableCopy];
    newParagraphStyle.lineSpacing = lineSpacingValue;
    [attributedString addAttribute:NSParagraphStyleAttributeName
                             value:newParagraphStyle
                             range:wholeTextRange];
    
    [self setAttributedText:attributedString];
}


@end
