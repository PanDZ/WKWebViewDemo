//
//  HTMLViewController.m
//  WKDemo
//
//  Created by neo on 2020/9/3.
//

#import "HTMLViewController.h"
#import "HTMLView.h"

@interface HTMLViewController ()

@property (nonatomic, strong) HTMLView* htmlView;

@end

@implementation HTMLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:[[HTMLView alloc]initWithFrame:CGRectMake(0, 0, 300,500)]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
