//
//  SchoolHomePageViewController.m
//  MoblieCQUPT_iOS
//
//  Created by 王一成 on 2018/8/14.
//  Copyright © 2018年 Orange-W. All rights reserved.
//

#import "SchoolHomePageViewController.h"


@interface SchoolHomePageViewController ()
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *btnHight;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *btnWidth;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *topHight;
@property (strong, nonatomic) IBOutlet UIButton *btn1;
@property (strong, nonatomic) IBOutlet UIButton *btn2;
@property (strong, nonatomic) IBOutlet UIButton *btn3;
@property (strong, nonatomic) IBOutlet UIButton *btn4;
@property (strong, nonatomic) IBOutlet UIButton *btn5;
@property (strong, nonatomic) IBOutlet UIButton *btn6;
@property (strong, nonatomic) IBOutlet UIButton *btn7;
@property (strong, nonatomic) IBOutlet UIButton *btn8;
@property (strong, nonatomic) IBOutlet UIButton *btn9;

@end

@implementation SchoolHomePageViewController

-(instancetype)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"校园攻略";
    
    _topHight.constant = HEADERHEIGHT;
    _SchoolRootView.backgroundColor =  [UIColor colorWithHexString:@"f6f6f6"];
    self.btnHight.constant = 129*(SCREENHEIGHT/667);
    self.btnWidth.constant = 113*(SCREENWIDTH/375);


    [self.view addSubview:_SchoolRootView];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickbtn:(UIButton *)sender {
    NSArray *array = @[@"SchollSubViewController",@"StuDormitoryRootViewController",@"SchollSubViewController",@"QuerLoginViewController",@"LostViewController",@"ShakeViewController",@"LostViewController",@"ShakeViewController"];
    NSArray *titleArray = @[@"学生食堂",@"学生寝室"];
    NSString *className = array[sender.tag];
    UIViewController *viewController =  (UIViewController *)[[NSClassFromString(className) alloc] init];
    viewController.hidesBottomBarWhenPushed = YES;
    viewController.title = titleArray[sender.tag];
    [self.navigationController pushViewController:viewController animated:YES];
    
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