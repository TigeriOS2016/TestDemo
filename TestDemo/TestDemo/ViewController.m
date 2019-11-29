//
//  ViewController.m
//  TestDemo
//
//  Created by imac on 2019/11/29.
//  Copyright © 2019 imac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test6];
}

- (void)test6{
    
}

- (void)test5{
    NSString *regexStr = @"^[\u4E00-\u9FA5A-Za-z0-9]+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regexStr];
    NSLog(@"%i",[predicate evaluateWithObject:regexStr]);
}

- (void)test4{
    NSString *profession_nameStr = @"哈佛就发接受对方放假fasdf";
    NSLog(@"%lu",(unsigned long)profession_nameStr.length);
    if(profession_nameStr.length>12){
        profession_nameStr = [profession_nameStr stringByReplacingCharactersInRange:NSMakeRange(12, profession_nameStr.length-12) withString:@"..."];
    }
    NSLog(@"%@",profession_nameStr);
}

- (void)test3{
    NSInteger num = MAX(20, 100);
    NSLog(@"%ld",(long)num);
}

- (void)test2{
    for(int i = 1; i<6;i++){
        NSLog(@"%d-----%f",i,ceil(i /4.0));
        NSLog(@"%d-----%d-----%d",i,i/4+1,i%4);
    }
}

- (void)test1{
    NSMutableArray *arr = [NSMutableArray arrayWithArray:@[@"1",@"2"]];
    [arr insertObject:@"3" atIndex:1];
    NSLog(@"%@",arr);
}



@end
