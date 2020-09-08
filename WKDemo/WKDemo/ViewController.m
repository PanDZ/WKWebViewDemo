//
//  ViewController.m
//  WKDemo
//
//  Created by neo on 2020/9/3.
//

#import "ViewController.h"
#import "HTMLViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 100, 40)];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(didClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)didClick {
    [self.navigationController pushViewController:[HTMLViewController new] animated:YES];
}


@end
