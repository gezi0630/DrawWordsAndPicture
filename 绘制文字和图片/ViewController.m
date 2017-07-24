//
//  ViewController.m
//  绘制文字和图片
//
//  Created by MAC on 2017/6/29.
//  Copyright © 2017年 GuoDongge. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *customLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //在标签里面绘制文字
    
    NSMutableDictionary * textDict = [NSMutableDictionary dictionary];
    //设置文字颜色
    textDict[NSForegroundColorAttributeName] = [UIColor redColor];
    //设置文字大小
    textDict[NSFontAttributeName] = [UIFont systemFontOfSize:30];
    
    
    textDict[NSStrokeWidthAttributeName] = @3;
    
    textDict[NSStrokeColorAttributeName] = [UIColor yellowColor];
    
    NSShadow * shadow = [[NSShadow alloc]init];
    shadow.shadowColor = [UIColor greenColor];
    shadow.shadowOffset = CGSizeMake(4, 4);
    shadow.shadowBlurRadius = 3;
    textDict[NSShadowAttributeName] = shadow;
    
    
    //创建富文本字符串
    NSAttributedString * strAtt = [[NSAttributedString alloc]initWithString:@"我爱北京天安门" attributes:textDict];
    
    self.customLabel.attributedText = strAtt;
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
