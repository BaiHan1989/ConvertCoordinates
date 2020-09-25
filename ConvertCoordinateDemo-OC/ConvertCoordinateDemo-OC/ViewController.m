//
//  ViewController.m
//  ConvertCoordinateDemo-OC
//
//  Created by 白晗 on 2020/9/25.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    redView.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:redView];
    
    UIView *greenView = [[UIView alloc] init];
    greenView.backgroundColor = [UIColor greenColor];
    greenView.frame = CGRectMake(50, 50, 100, 100);
    [redView addSubview:greenView];
    
    
    /**
     坐标转换
      - (CGRect)convertRect:(CGRect)rect toView:(nullable UIView *)view;
      作用：找 convertRect 在 调用该方法的视图 相对于 toView视图 坐标系中的位置
      1. 调用该方法的视图相对于toView参数视图的位置作为新的坐标原点（100, 100）
      2. 找到convertRect在新的坐标原点上的位置(10, 10)
      3. 返回值：convertRect相对于toView的位置 (100+10, 100+10)
      from: redView to: self.view
     */
    
    CGRect newRect = [redView convertRect:greenView.frame toView:self.view];
    NSLog(@"%@", NSStringFromCGRect(newRect));
    
    // 这个可以理解与 - (CGRect)convertRect:(CGRect)rect toView:(nullable UIView *)view;相反
    // from: redView to: self.view
    CGRect rect = [self.view convertRect:greenView.frame fromView:redView];
    NSLog(@"%@", NSStringFromCGRect(rect));
    

    
    // 关于convertPoint和convertRect是类似的，完全可以举一反三
    
    // 实际应用：今日头条，点击不喜欢按钮弹窗处理（获取在cell中的点击按钮相对于window的位置）
    
    // - (CGRect)convertRect:(CGRect)rect toView:(nullable UIView *)view;
    // 如果toView传nil 网上有的说是针对window这不是很准确
    // 准确的说法：要看有没有创建keyWindow，如果创建项目使用的不是keyWindow，此时都没有window，谈何针对window呢？
    // 如果没有keyWindow，那么toView相对的是方法调用的视图，也就是相对于自己。
    
}


@end
