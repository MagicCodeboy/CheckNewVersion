//
//  ViewController.m
//  CheckNewVersion
//
//  Created by lalala on 2017/4/20.
//  Copyright © 2017年 lsh. All rights reserved.
//

#import "ViewController.h"
//1.导入头文件
#import "CheckNewVersion.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self checkMethod];
}
//检查方法
-(void)checkMethod{
    //2.检查更新
    [CheckNewVersion checkNewVersionWithAppID:@"######" controller:self];
    
    [CheckNewVersion checkNewVersionWithAppID:@"" customAlert:^(AppleStoreModelInfo *appInfomation) {
        
    }];//自定义alert的方法
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
