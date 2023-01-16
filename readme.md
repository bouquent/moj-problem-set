# moj problem set  


## 加入新题目的步骤：

### 1. 将题目标题加入到problem_title_set文件中, 文件名：problem_id+problem_title.md  

### 2. 准备好新加入的题目需要的文件  
#### 配置文件 problem.conf  
    样例:  
    n_tests 10          // 标准测试点数目  
    n_ex_tests 1        // 额外测试点数目  
    n_sample_tests 1    // 样例测试点数目  
    input_pre test       // 输入文件前缀  
    input_suf in        // 输入文件后缀  
    output_pre test      // 输出文件前缀  
    output_suf out      // 输出文件后缀
    time_limit 1        // 运行时间限制
    memory_limit 512    // 运行内存限制
    output_limit 64     // 输出文件大小限制
    use_builtin_judger on   // 是否使用标准的judger, 一般情况都设置为on
    use_builtin_checker ncmp  // 选择你要的checker
    with_implementer on // 开启核心代码模式


#### 根据problem.conf里面的配置文件添加输入输出文件  
    n_tests 10          // 标准测试点数目 
    input_pre test       // 输入文件前缀  
    input_suf in        // 输入文件后缀  
    output_pre test      // 输出文件前缀  
    output_suf out      // 输出文件后缀  
    test1.in   
    test1.out  
    test2.in  
    test2.out  
    ...

#### 核心代码模式所需要的文件，单独创建一个requre文件夹，并把文件放在该文件夹下  
    注意主函数必须放在implementer.c文件中


### 3. 将题目压缩打包成zip文件，文件名为problem_title.zip。
    记住解压该文件的时候不是得到的一个文件夹，而是直接得到problem.conf等题目需要的信息文件。打包后将zip文件放在update文件夹下。


### 4. 在提交之前运行pre-commit脚本
    可以把脚本放在.git/hooks下面，commit之前自动触发。