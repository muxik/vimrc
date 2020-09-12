# Muxi_k's vimrc



# 前言

轻量级vim配置，适合日常使用保留了大量原生vim按键映射



# 安装

```bash
git clone https://github.com/muxik/vimrc.git ~/.vim 
```

进入vim后运行`：PLugInstall`安装依赖插件，重新启动vim会自动安装coc扩展插件



## 依赖

- nodejs (coc.vim需要)
- npm (coc.vim需要)
- nerdfonts(如果不安装会导致乱码，你可以修改配置文件让vim不依赖)
- fzf (文件查找)
- ag  (文档搜索)
- clang(c/c++支持)

### PIP插件

```bash
pip install jedi
pip install pylint
```

# 帮助



### 文件操作

|   快捷键   |  功能  |
| ---- | ---- |
| S    | 保存当前文件     |
|  Q    | 退出当前文件     |
|     R   |  刷新vim配置    |

### vim 分屏

| 快捷键 | 功能     |
| ------ | -------- |
| sl     | 向右分屏 |
|sh |向左分屏|
|sk|向上分屏幕|
|sj|向下分屏|

### 分屏光标移动

| 快捷键    | 功能 |
| --------- | ---- |
| <LEADER>j | 向下 |
| <LEADER>k | 向上 |
| <LEADER>h | 向左 |
| <LEADER>l | 向右 |

### 分屏方向

| 快捷键 | 功能 |
| ------ | ---- |
| sv     | 垂直 |
| sh     | 水平 |

### Vim Buffers

| --   | --               |
| ---- | ---------------- |
| tu   | 新建buffer       |
| tl   | 到下一个buffer   |
| th   | 回到上一个buffer |

#### 更多内容查看`.vim/vim-keymap.vim`



# 参考配置

- [vim-init](https://github.com/skywind3000/vim-init)

- [vimpuls](https://github.com/chxuan/vimplus)

- [nvim](https://github.com/theniceboy/nvim)



# LICENSE

 MIT License