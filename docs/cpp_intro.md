# C++: A brief introduction

~~用英文我写着感觉麻烦, 你们看着感觉也不容易, 摆烂用中文了.~~

## 面向对象简介

C++ 是一门面向对象的语言, 对象指的是类 (class) 的实例 (instance), 把对象的数据和操作封装到一起.

在 C 中操作称为函数, C++ 里类中的函数称为方法 (method).

## C++ IO

用 `iostream` 里的 `std::cin` 和 `std::cout`.

例如:

```cpp
int a = 0;
std::cin >> a; // 读入 a
std::cout << a << std::endl; // 输出 a
```

这里的 `std` 是 `namespace` (命名空间), 用来将代码组织到逻辑组中, 同时防止函数变量等的重名.

## Auto keyword

参考 https://learn.microsoft.com/zh-cn/cpp/cpp/auto-cpp?view=msvc-170

`auto` 关键字用来声明变量并指定初始化表达式.

`auto` 初始化表达式可以采用多种形式：

- 通用初始化语法, 例如 `auto a { 42 };`
- 赋值语法, 例如 `auto b = 0;`
- 通用赋值语法, 它结合了上述两种形式, 例如 `auto c = { 3.14156 };`
- 直接初始化或构造函数样式的语法, 例如 `auto d( 1.41421f );`

## C++11 foreach

语法:

```cpp
for (元素类型 元素变量 : 可迭代的元素) {
    循环体
}
```

例如:

```cpp
int a[] = { 1, 1, 4, 5, 1, 4};
for (int i : a) {
    std::cout << it << ",";
}
```

跟 Python 的 for 循环很像.

## C++ string

C 对于 `string` 提供的 API 很少, 也不太好用, 因此 C++ 提供了 `std::string` 这个类, 具体的 API 可以看 https://cplusplus.com/reference/string/string/.

常用方法的诸如:

`length`: 返回字符串长度.

`push_back(c)`: 在字符串末尾添加一个字符 `c`.

`append(str)`: 在字符串末尾添加字符串 `str` .

`substr`: 取子串.

`find`: 在字符串中进行查找.

## STL

参考 https://www.runoob.com/cplusplus/cpp-stl-tutorial.html

STL (Standard Template Library), 意为标准模板库, 核心包含容器, 算法和迭代器. 本次实验主要需要两个容器的 API, 分别是

+ `std::unordered_map`: 哈希表: https://cplusplus.com/reference/unordered_map/unordered_map/. 
+ `std::vector`: 动态数组: https://cplusplus.com/reference/vector/vector/.

