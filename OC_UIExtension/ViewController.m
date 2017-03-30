//
//  ViewController.m
//  OC_UIExtension
//
//  Created by YE on 2017/3/30.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * bt = [UIButton initWithFrame:CGRectMake(20, 100, 100, 50) maker:^(UIButtonMaker *make) {
        
        make.setTitle(@"七尺男儿").forState(UIControlStateNormal);
        make.setTitleColor(UIColor.red()).forState(UIControlStateNormal);
        make.setBackgroundColor(UIColor.hex(@"#dedddd")).forState(UIControlStateNormal);
    }];
    self.view.addSubview(bt);
    
    bt.touchUpInside( ^() {
        NSLog(@"-----点击");
    });
    
    UIButton * cs = [UIButton initWithType:UIButtonTypeCustom frame:CGRectMake(20, 200, 100, 50) maker:^(UIButtonMaker *make) {
        
        make.setTitle(@"七尺大乳").forState(UIControlStateNormal);
        make.setTitleColor(UIColor.green()).forState(UIControlStateNormal);
        make.setBackgroundColor(UIColor.hex(@"#dedddd")).forState(UIControlStateNormal);
        make.setCornerRadius(5).setBorderColor(UIColor.black()).setBorderWidth(2);
    }];
    self.view.addSubview(cs);
    
    cs.touchUpInside ( ^() {
       
        NSLog(@"touch -----");
    });
    
    [UILabel init:^(UILabelMaker *make) {
        
    }];
    
    UILabel * th = [UILabel init:^(UILabelMaker *make) {
        
        make.setFrame(CGRectMake(20, 300, 100, 50));
        make.setText(@"一骑当千");
        make.setTextColor(UIColor.blue());
        make.setTextAlignment(NSTextAlignmentCenter);
        make.setBorderColor(UIColor.red());
        make.setBorderWidth(2);
        make.setCornerRadius(5);
    }];
    self.view.addSubview(th);
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
