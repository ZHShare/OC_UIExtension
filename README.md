# OC_UIExtension
block链式语法，优雅。

  UIButton * bt = [UIButton initWithFrame:CGRectMake(20, 100, 100, 50)
                                      maker:^(UIButtonMaker *make) {
        
        make.setTitle(@"七尺男儿").forState(UIControlStateNormal);
        make.setTitleColor(UIColor.red()).forState(UIControlStateNormal);
        make.setBackgroundImage(UIImage.withColor(UIColor.hex(@"#dedddd"))).forState(UIControlStateNormal);
                                          
    }];
    self.view.addSubview(bt);
    
    bt.touchUpInside( ^() {
        NSLog(@"-----点击");
    });
