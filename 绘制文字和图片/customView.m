//
//  customView.m
//  绘制文字和图片
//
//  Created by MAC on 2017/6/29.
//  Copyright © 2017年 GuoDongge. All rights reserved.
//

#import "customView.h"

@implementation customView



- (void)drawRect:(CGRect)rect {
  
    //超出裁剪区的内容会全部裁剪掉
    //注意：裁剪必须放在绘制之前（这行代码注释掉就不会裁剪了）
//    UIRectClip(CGRectMake(20, 20, 100, 100));
    
    UIImage * image = [UIImage imageNamed:@"阿狸头像"];
    //分三种绘制方法：
    
    //•默认绘制的内容尺寸跟图片尺寸一样大
//    [image drawAtPoint:CGPointZero];
    
    //•图片的大小和控件一样大
    [image drawInRect:rect];
    
   //•绘制的图片是平铺到控件上的
//    [image drawAsPatternInRect:rect];
    
 /******************/
    //绘制文字
//    [self drawText];
    
}

//绘制文字
-(void)drawText
{
    
    NSString * str = @"我爱北京天安门";
    
    NSMutableDictionary * textDict = [NSMutableDictionary dictionary];
    //设置文字颜色
    textDict[NSForegroundColorAttributeName] = [UIColor redColor];
    //设置文字大小
    textDict[NSFontAttributeName] = [UIFont systemFontOfSize:30];
    
    //设置空心文字的颜色和宽度
    textDict[NSStrokeWidthAttributeName] = @3;
    
    textDict[NSStrokeColorAttributeName] = [UIColor yellowColor];
    
    //创建阴影对象
    NSShadow * shadow = [[NSShadow alloc]init];
    //颜色
    shadow.shadowColor = [UIColor greenColor];
    //偏移量
    shadow.shadowOffset = CGSizeMake(4, 4);
    //模糊半径
    shadow.shadowBlurRadius = 3;
    //加入属性
    textDict[NSShadowAttributeName] = shadow;
    
    
    [str drawInRect:self.bounds withAttributes:textDict];
}




@end
