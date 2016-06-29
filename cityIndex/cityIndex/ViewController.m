//
//  ViewController.m
//  cityIndex
//
//  Created by FonChY on 16/6/29.
//  Copyright © 2016年 ChinaPan. All rights reserved.
//

#import "ViewController.h"
#import "NSArray+index.h"
#define kScreenW     [UIScreen mainScreen].bounds.size.width
#define kScreenH     [UIScreen mainScreen].bounds.size.height
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, copy) NSArray *dataArr;

@property (nonatomic, strong) UITableView *mainTableView;
/**
 *  动画显示的lable
 */
@property (nonatomic, strong) UILabel *myLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *addArr = @[  @"香港特别行政区",
                          @"江西省",
                          @"安徽省",
                          @"江苏省",
                          @"宁夏回族自治区",
                          @"甘肃省",
                          @"内蒙古自治区",
                          @"河北省",
                          @"北京",
                          @"广西壮族自治区",
                          @"湖南省",
                          @"河南省",
                          @"台湾省",
                          @"吉林省",
                          @"西藏自治区",
                          @"贵州省",
                          @"重庆",
                          @"澳门特别行政区",
                          @"山东省",
                          @"福建省",
                          @"浙江省",
                          @"上海",
                          @"新疆维吾尔自治区",
                          @"青海省",
                          @"陕西省",
                          @"海外",
                          @"山西省",
                          @"天津",
                          @"海南省",
                          @"广东省",
                          @"湖北省",
                          @"黑龙江省",
                          @"辽宁省",
                          @"云南省",
                          @"四川省"];
    self.dataArr = [NSArray suoyin:addArr];
    [self setUI];
    
}




- (void)setUI{
    
    self.mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kScreenW, kScreenH) style:UITableViewStylePlain];
    self.mainTableView.dataSource = self;
    self.mainTableView.delegate = self;
    [self.view addSubview:self.mainTableView];
    
    self.myLabel = [[UILabel alloc]initWithFrame:CGRectMake( 0,0, 50, 50)];
    self.myLabel.center = self.view.center;
    self.myLabel.backgroundColor = [UIColor redColor];
    self.myLabel.layer.cornerRadius = self.myLabel.bounds.size.width * 0.5;
    self.myLabel.layer.masksToBounds = YES;
    self.myLabel.textAlignment = NSTextAlignmentCenter;
    self.myLabel.alpha = 0;
    
    
    UIWindow *window = [[UIWindow alloc] init];
    window = [UIApplication sharedApplication].keyWindow;
 
    [self.view addSubview:self.myLabel];
    [self.view bringSubviewToFront:self.myLabel];
}
#pragma mark - UITableViewDataSource

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if ([self.dataArr[section][@"data"] count] > 0) {
        return self.dataArr[section][@"indexTitle"];
    }
    
    return nil;
}
- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
    
    NSMutableArray *temp = [NSMutableArray array];
    for (NSDictionary *dict in self.dataArr) {
        [temp addObject:dict[@"indexTitle"]];
    }
    
    self.myLabel.text = temp[index];
    
    [UIView animateWithDuration:1.5 animations:^{
        self.myLabel.alpha = 1.0;
    } completion:^(BOOL finished) {
        self.myLabel.alpha = 0;
    }] ;
    return index;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataArr.count;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dataArr[section][@"data"] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString * cellName = @"UITableViewCell";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    cell.textLabel.text = self.dataArr[indexPath.section][@"data"][indexPath.row];
    return cell;
}

//索引的代理方法
- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    NSMutableArray *temp = [NSMutableArray array];
    for (NSDictionary *dict in self.dataArr) {
        [temp addObject:dict[@"indexTitle"]];
    }
    return temp.copy;
}



@end
