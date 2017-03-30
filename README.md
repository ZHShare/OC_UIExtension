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

UILabel * th = [UILabel initWithFrame:CGRectMake(20, 300, 100, 50) maker:^(UILabelMaker *make) {
        
        make.setText(@"一骑当千");
        make.setTextColor(UIColor.blue());
        make.setTextAlignment(NSTextAlignmentCenter);
        make.setBorderColor(UIColor.red());
        make.setBorderWidth(2);
        make.setCornerRadius(5);
    }];
    self.view.addSubview(th);
