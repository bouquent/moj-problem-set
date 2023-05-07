# moj problem set

## 加入新题目的步骤：

### 1. 将题目标题加入到 problem_title_set 文件中, 文件名：problem_id+problem_title.md(非必须)

### 2. 在 problem_data_user 文件夹中加入 json 文件, 文件的格式如下，必须包含所有的字段。使用文件夹下的脚本 update_user_problem_data.sh + json 文件名，将题目信息更新到用户页面。

    {
        "id": "1",
        "title": "A加B问题",
        "description": "输出A+B的值",
        "inputformat": "输入两个整数A和B",
        "outputformat": "输出一个整数C",
        "sampleinput": "400 500",
        "sampleoutput": "900",
        "mode": "ACM模式",
        "hint": "无提示",
        "difficulty": "easy",
        "type": ["1", "2", "3"]
    }

### 3. 准备好新加入的题目需要的文件

#### 配置文件 problem.conf

    样例:
    n_tests 10          // 标准测试点数目
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
    with_implementer on // 核心代码模式

#### 根据 problem.conf 里面的配置文件添加输入输出文件

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

#### 核心代码模式所需要的文件，单独创建一个 requre 文件夹，并把主函数放在该文件夹下

    注意主函数命名必须为implementer.c/cpp/java

### 4. 将题目压缩打包成 zip 文件，文件名为 problem_title.zip。

    记住解压该文件的时候不是得到的一个文件夹，而是直接得到problem.conf等题目需要的信息文件。打包后将zip文件放在update文件夹下。

### 5. 在提交之前运行 pre-commit 脚本

    可以把脚本放在.git/hooks下面，commit之前自动触发。
