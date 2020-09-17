//
//  HTMLView.m
//  WKDemo
//
//  Created by neo on 2020/9/3.
//

#import <WebKit/WebKit.h>
#import "HTMLView.h"

@interface HTMLView ()

@property(nonatomic, strong) WKWebView *webview;

@end

@implementation HTMLView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor blueColor];
        _webview = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        [_webview loadHTMLString:@"<div style='height:100px;width:200px;background-color:yellow'></div>" baseURL:nil];
        [self addSubview:_webview];
        [self.layer setNeedsLayout];
    }

    return self;
}

+ (Class)layerClass {
    return [CATiledLayer class];
}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    [self drawBackgroundinRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) inContext:ctx useCache:NO];
}

- (void)drawBackgroundinRect:(CGRect)drawRect inContext:(CGContextRef)ctx useCache:(BOOL)useCache {
    CGContextSaveGState(ctx);

    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, drawRect);
    CGContextAddPath(ctx, path);

    CGContextDrawPath(ctx, kCGPathFill);
    CGPathRelease(path);

    CGContextRestoreGState(ctx);
}

@end
