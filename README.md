# 我的插件列表 
1. nerdtree  
2. ctrlp
3. bufferExplore
4. YouCompleteMe
5. Vundle
6. nerdCommenter
7. fugitive
8. numbers
9. Ack
10. mru

# 插件使用说明

## 通用法则
- 打开插件说明文档: :h pluginName
- buffer切换：,l 下一个buffer，,h 上一个buffer
- quickfix切换：,n 下一个错误处，,p 上一个错误处
- 切换工作目录到当前buffer所在目录：,cd
- 保存当前buffer：,w
- 复制当前buffer到新tab页：,co



## [mru][1] 的使用 
在最近使用过的文件中进行查找文件
- 调用mru: ,f
- 在当前编辑区打开选中文件: enter (回车键)
- 退出mru: q
- 在当前编辑区垂直方向新打开一个窗口并打开文件: o
- 在当前编辑区水平方向新打开一个窗口并打开文件: O
- 选中文件: j,k 进行上下切换

## [ctrlp][2] 的使用
在当前的工作目录搜索文件，在buffer中搜索文件，以及在最近使用的文件列表中搜索文件
- 使用trlp: ,j
- 退出trlp: ESC键

## [nerdtree][3] 的使用
目录树的操作
### 光标在编辑区时
- 打开或者隐藏目录树: ,nn
- 打开编辑区文件所在的目录树，并定位到此文件名上: ,nf
- 按照标签打开目录:,nb

### 目录标签操作
- 为目录设置标签*光标停在需要设置标签的目录上*: ,bb
- 清除目录标签: ,bc 
- 将某个标签目录设为根目录*光标必须在目录上否则操作无效*：,br

### 光标在目录上时
- 关闭目录:q
- 打开文件或目录： o
- 打开选中文件但光标仍停留在目录上：go
- 在新标签页中打开一个文件：t
- 在新标签页中打开一个文件但光标仍停留在目录上：T

- 回到当前节点的父目录：p
- 回到根节点目录：P
- 打开当前节点下的所有目录：O
- 关闭当前节点下的所有目录: X
- 关闭当前节点及其子目录回到上级目录:x
- 刷新当前目录:r
- 刷新根节点目录：R
- 使当前目录为工作目录：cd
- 使更目录返回到上级目录：u
- 使当前目录为根目录：C

- 显示目录操作列表对目录进行添加和修改：m
- 显示所有的标签列表:B
- 显示影藏的文件：I

## [numbers][4] 的使用
- &lt;F3&gt; 在相对行号和绝对行号之间进行切换

## [bufferExplore][5] 的使用
显示buffer列表, 需要vim7.4版本支持
- 查看buffer列表：,o
- 打开文件：o
- 删除buffer：d
- 关闭buffer列表：q

## [nerdcomment][6] 的使用
添加和取消注释
- 添加单行注释：,cc
- 添加多行注释：,cm
- 取消注释： ,cu
- 添加注释前先复制文本：,cy
- 添加或取消注释：,ci
- 在本行末尾添加注释符号并进入插入模式：,cA

## [emmet-vim][7] 的使用
快速编写html以及css
- 生成代码：,,
- 注释html代码：,/
- 删除html代码块：,k
- 选中html代码块：,d 或者,D

## [Ultisnips][8] 的使用
代码片段补全


# vim 使用技巧
1. 删除当前光标到行尾：D
2. 向前重复查找：;
3. 后退查找：,
4. 重复修改：
 

[1]: https://github.com/vim-scripts/mru.vim  
[2]: https://github.com/kien/ctrlp.vim 
[3]: https://github.com/scrooloose/nerdtree
[4]: https://github.com/myusuf3/numbers.vim
[5]: https://github.com/jlanzarotta/bufexplorer
[6]: https://github.com/scrooloose/nerdcommenter
[7]: https://github.com/mattn/emmet-vim
