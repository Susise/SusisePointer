//
//  ViewController.m
//  SusisePointer
//
//  Created by sunqiaoqiao on 2018/4/19.
//  Copyright © 2018年 S. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1、定义一个int 型常量a，p 就是用来存储a的地址的，&a就是取a的地址。int * 表示指针变量p 是int型指针，里面存储的地址所指向的数据是int型
    
    int a = 0;
    
    int* p = &a;// int* p 等价于 int *p  * 在表示指向的时候，*只是说明这个变量是指针，对于操作的时候，*表示操作地址。
    
    printf("a = %d\n",(int) sizeof(p));// p变量占8个字节，说明指针在C语言中占 8个字节
    
    
    
    //2、 指针变量只能保存地址
    
    int *x = 10;//错误，指针变量只能保存地址  &a
    
    int *y = a;//错误，指针变量只能保存地址  &a
    
    
    
    //3、 z = &b 以下打印的全是b的地址
    int b = 10;
    
    int *z = &b;
    
    printf("%p\n",&b);
    
    printf("%p\n",z);
    
    
    //4、声明指针变量时候的* 和操作地址的时候的 * 的区别 .一个是定义，一个是寻找并操作. *p 指的是 找到这块地址里面对应的数据，并进行操作，这里 *p 是寻找并操作。
    int  u = 10;
    
    int *w = &u;
    
    *w = 20;
    
    printf("指针w 的占多少字节 ---- %d\n",(int) sizeof(w));
    
    printf("u ---- %d\n",u);
    
    printf("&u的地址 ---- %p\n",&u);
    
    printf("w ---- %p\n",w);
    
    printf("*w ---- %p\n",*w);
    
    *w = &u;//这个是错误的，*w代表寻找w 存放的地址对应的数据，并操作，不能给他赋值 地址。
    
    //5、利用指针来接收变量的地址
    
    int m = 10;
    
    change(&m);

    printf("m ---- %d\n",m);
    
    //6、取地址符 &取地址，指针保存地址
    
    int d = 10;
    
    int *c = &d;//c 保存d的地址
    
    printf("*c ---- %d\n",*c);//找到 *c 对应的地址 里面所保存的数据
    
    //修改指针指向的那块内存空间
    *c = 1000;
    
    printf("*c ---- %d\n",*c);//找到 *c 对应的地址 里面所保存的数据
    
    
    
}

int change(int *p){
   return *p = 100;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
