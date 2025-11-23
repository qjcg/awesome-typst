<p align=center>
  <a href="README.md" hreflang="en" lang="en">English</a>
  | <a href="README_ZH.md" hreflang="zh" lang="zh">简体中文</a>
</p>

# Awesome Typst 中文版

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> Awesome Typst 列表中文版（持续维护至最新），最初为已不再维护的 [typst-cn/awesome-typst-cn](https://github.com/typst-cn/awesome-typst-cn) ，后引申出的新仓库 [typst-doc-cn/awesome-typst-cn](https://github.com/typst-doc-cn/awesome-typst-cn)，现在被合并到当前仓库。
>
> 该仓库部分内容由 ChatGPT 根据 [英文版](README.md) 翻译而来，并加入了中文专属部分〈如中国大学论文模板〉。

为 [Typst](https://github.com/typst/typst) 中文用户精心策划的有用链接集合。

欢迎提交 PR！也欢迎加入 Typst 非官方中文交流 QQ 群 793548390 一起讨论！

**Typst 非官方中文文档网站:** https://typst-doc-cn.github.io/docs/

除了文档，还可以考虑阅读 [typst-examples-book](https://sitandr.github.io/typst-examples-book/book/)，里面包含了一些 Typst 的高级知识、简单示例，以及一些最佳实践。

## 关于 Typst

Typst 是可用于出版的可编程标记语言，拥有变量、函数与包管理等现代编程语言的特性，注重于科学写作 (science writing)，定位与 LaTeX 相似。

- **语法简洁**：上手难度跟 Markdown 相当，文本源码阅读性高，不会像 LaTeX 一样充斥着反斜杠与花括号。
- **编译速度快**：Typst 使用 Rust 语言编写，即 typ(e+ru)st，目标运行平台是WASM，即浏览器本地离线运行；也可以编译成命令行工具，采用一种 **增量编译** 算法和一种有约束的版面缓存方案，**文档长度基本不会影响编译速度，且编译速度与常见 Markdown 渲染引擎渲染速度相当**。
- **环境搭建简单**：不需要像 LaTeX 一样折腾几个 G 的开发环境，原生支持中日韩等非拉丁语言，无论是官方 Web App 在线编辑，还是使用 VS Code 安装插件本地开发，都是 **即开即用**。
- **现代编程语言**：Typst 是可用于出版的可编程标记语言，拥有 **变量、函数、包管理与错误检查** 等现代编程语言的特性，同时也提供了 **闭包** 等特性，便于进行 **函数式编程**。以及包括了 `[标记模式]`、`{脚本模式}` 与 `$数学模式$` 等多种模式的作用域，并且它们可以不限深度地、交互地嵌套。并且通过 **[包管理](https://typst-doc-cn.github.io/docs/packages/)**，你不再需要像 TexLive 一样在本地安装一大堆并不必要的宏包，而是 **按需自动从云端下载**。

## 目录

- [Awesome Typst 中文版](#awesome-typst-中文版)
  - [关于 Typst](#关于-typst)
  - [目录](#目录)
  - [官方项目链接](#官方项目链接)
  - [集成和工具](#集成和工具)
    - [浏览器扩展](#浏览器扩展)
    - [聊天机器人](#聊天机器人)
    - [CI/CD](#cicd)
    - [命令行工具](#命令行工具)
    - [在线工具](#在线工具)
    - [编辑器](#编辑器)
    - [编辑器集成](#编辑器集成)
    - [编程](#编程)
    - [Typst 作为服务](#typst-作为服务)
  - [模板和库](#模板和库)
    - [官方](#官方)
    - [中国大学论文模板](#中国大学论文模板)
    - [通用](#通用)
    - [作业](#作业)
    - [CV](#cv)
      - [示例](#示例)
      - [模板](#模板)
    - [日历 / 课程表](#日历--课程表)
    - [脚注和尾注](#脚注和尾注)
    - [格式](#格式)
    - [图形](#图形)
    - [信件](#信件)
    - [语言学](#语言学)
    - [数学](#数学)
    - [音乐](#音乐)
    - [物理](#物理)
    - [会议](#会议)
    - [期刊](#期刊)
    - [基金/提案](#基金提案)
    - [工程](#工程)
    - [绘图](#绘图)
    - [海报](#海报)
    - [脚本](#脚本)
    - [幻灯片](#幻灯片)

<!-- markdown-toc end -->

## 官方项目链接

- [typst.app](https://typst.app) - Typst 网页应用程序
- [Typst 文档](https://typst.app/docs)
- [GitHub](https://github.com/typst/typst)
- [博客](https://typst.app/blog/)
- 社交 - [Discord] [Instagram] [LinkedIn] [Mastodon] [X]

[discord]: https://discord.gg/2uDybryKPe
[instagram]: https://instagram.com/typstapp/
[linkedin]: https://www.linkedin.com/company/typst/
[mastodon]: https://mastodon.social/@typst
[X]: https://twitter.com/typstapp/

## 集成和工具

### 浏览器扩展

- (FireFox) [bib-kit](https://github.com/MordragT/bib_kit) - 提取网站信息以创建 hayagriva 格式的引用
- (FireFox) [yank](https://addons.mozilla.org/en-US/firefox/addon/yank/) - 复制当前选项卡的 URL 和标题，格式化为选择的标记语言，然后复制到剪贴板（支持 Typst 链接格式）

### 聊天机器人

- [typst-bot](https://github.com/mattfbacon/typst-bot) - 用于呈现 Typst 代码的 Discord 机器人

### CI/CD

- [gitlab-ci-typst](https://gitlab.com/IvanSanchez/gitlab-ci-typst) - 使用 GitLab CI 管道构建 Typst 文档
- [setup-typst](https://github.com/typst-community/setup-typst) - 使用 GitHub 操作（Actions）安装 Typst
- [typst-action](https://github.com/lvignoli/typst-action) - 使用 GitHub 操作构建 Typst 文档

### 命令行工具

- [typstfmt](https://github.com/astrale-sharp/typstfmt/) - Typst 语言的基本格式化程序，未来还有更多功能！
- [typst-preview](https://github.com/Enter-tainer/typst-preview) - 在浏览器中实时预览 Typst
- [typst-live](https://github.com/ItsEthra/typst-live) - 在 Web 浏览器中实时重新加载 PDF
- [typst-pandoc](https://github.com/lvignoli/typst-pandoc) - Pandoc 的 Typst 自定义读写器

### 在线工具

- [excel-to-typst](https://github.com/hongjr03/excel-to-typst) - 从 Excel 表格转换为 Typst 表格的工具，支持上传选择工作表或直接粘贴工作表区域，允许解析单元格对齐属性

### 编辑器

- [typstudio](https://github.com/Cubxity/typstudio) - 正在开发中的使用 Tauri 构建的桌面编辑器

### 编辑器集成

- [SeniorMars/tree-sitter-typst](https://github.com/SeniorMars/tree-sitter-typst) - 用于 Typst 文件格式的 TreeSitter 解析器
- [Typst LSP VS Code 扩展](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp)
- [Typst Preview VS Code 扩展](https://marketplace.visualstudio.com/items?itemName=mgt19937.typst-preview) - 在 VSCode 中实现 typst 实时预览
- [frozolotl/tree-sitter-typst](https://github.com/frozolotl/tree-sitter-typst) - 重点放在正确性上的 tree-sitter 语法分析器
- [obsidian-typst](https://github.com/fenjalien/obsidian-typst) - 使用 Typst 将 Obsidian 中的 Typst 代码块呈现为图像的插件，通过 WASM 的力量！
- [typst-lsp](https://github.com/nvarner/typst-lsp) - Typst 的全新语言服务器，以及 VS Code 扩展
- [typst-mode.el](https://github.com/Ziqi-Yang/typst-mode.el) - 用于 `typst` 基于标记的排版系统的 Emacs 主要模式
- [typst-sympy-calculator](https://github.com/OrangeX4/vscode-typst-sympy-calculator) - 用于 Typst 数学计算的 VS Code 扩展，包括算术、微积分、矩阵、自定义变量和自定义函数
- [typst.nvim](https://github.com/SeniorMars/typst.nvim) - 正在开发中。目标：TreeSitter 高亮、代码片段和与 Neovim 的顺畅集成
- [typst.vim](https://github.com/kaarmu/typst.vim) - Typst 的 Vim 插件
- [typst-conceal.vim](https://github.com/MrPicklePinosaur/typst-conceal.vim) - Vim/Nvim 插件，用于替换 typst 长符号到 unicode 字符
- [Typst Sync](https://github.com/OrangeX4/vscode-typst-sync) - 用于 Typst 本地包管理和同步的 VS Code 扩展
- [Typst Math](https://github.com/supersurviveur/typst-math) - 在 VSCode 编辑器中预览 typst 数学公式

### 编程

- [leetcode.typ](https://github.com/lucifer1004/leetcode.typ) - 使用 Typst 解决 LeetCode 问题
- [typst-py](https://github.com/messense/typst-py) - Typst 的 Python 绑定

### Typst 作为服务

- [typst-http-api](https://github.com/slashformotion/typst-http-api) - 包含 API 的简单 Docker，用于编译 Typst 标记

## 模板和库

### 官方

- [typst/templates](https://github.com/typst/templates) - 随 Typst 网页应用程序一起提供的模板

### 中国大学论文模板

- [pkuthss-typst](https://github.com/lucifer1004/pkuthss-typst): 北京大学学位论文模板
- [BUAA-typst](https://github.com/cherichy/BUAA-typst): 北京航空航天大学学位论文模板
- [bupt-typst](https://github.com/QQKdeGit/bupt-typst): 北京邮电大学本科学士学位论文模板
- [HUST-typst-template](https://github.com/werifu/HUST-typst-template): 用于华科毕业设计（本科）的 typst 模板。
- [WHU-typst-template](https://github.com/Hithereland/whu-typst-template) 用于武汉大学毕业设计 (本科) 的 typst 模板
- [SHU-Bachelor-Thesis-Typst](https://github.com/shuosc/SHU-Bachelor-Thesis-Typst): 上海大学本科毕业论文 typst 模板 (开发ing)
- [sysu-thesis-typst](https://github.com/howardlau1999/sysu-thesis-typst): 中山大学学位论文 Typst 模板
- [ZJGSU-typst-template](https://github.com/jujimeizuo/ZJGSU-typst-template): 浙江工商大学毕业设计（本科）的 typst 模板。
- [CQUPTypst](https://github.com/jerrita/CQUPTypst): 一个 Typest 模板，但是大专
- [zjut-report-typst](https://github.com/zjutjh/zjut-report-typst): 浙江工业大学一些实验报告的 Typst 模板
- [HIT-Thesis-Typst](https://github.com/chosertech/HIT-Thesis-Typst): 适用于哈尔滨工业大学学位论文的 Typst 模板
- [nju-thesis-typst](https://github.com/nju-lug/nju-thesis-typst): 南京大学学位论文 Typst 模板，使用 Typst 包管理、闭包等现代编程语言特性开发，一个更方便编辑和拓展的模板
- [HEU-Report-Typst](https://github.com/a-kkiri/HEU-Report-Typst): 哈尔滨工程大学课程作业/结课汇报的通用简易 Typst 模板
- [sustech-ug-thesis-typst](https://github.com/dazhi0619/sustech-ug-thesis-typst): 南方科技大学本科毕业论文 Typst 模版
- [ustcthss-typst](https://github.com/smallscientist1/ustcthss-typst): 中国科学技术大学本科毕业论文 Typst 模版
- [nwnu-thesis-typst](https://github.com/PrinOrange/nwnu-thesis-typst): 西北师范大学研究生学位论文 Typst 模版
- [typst_xdutemplate](https://github.com/Hubert9982/typst_xdutemplate)：西安电子科技大学本科毕业设计 Typst 非官方模板

### 通用

- [Data Thinking Report Template](https://github.com/onefact/datathinking.org-report-template) - 用 Zotero 协作文献目录编写人工智能白皮书的模板
- [Mantys](https://github.com/jneug/typst-mantys) - 用于编写 Typst 包的手册的模板
- [Project-Report-Typst](https://github.com/aurghya-0/Project-Report-Typst) - 用于大学或大学项目报告的简单模板
- [SimplePaper](https://github.com/1bitbool/SimplePaper) - 用于编写简单论文的中文模板
- [Typst-Paper-Template](https://github.com/jxpeng98/Typst-Paper-Template) - 用于工作论文的 Typst 模板
- [LaPreprint](https://github.com/rowanc1/LaPreprint) - 适用于 Typst 的漂亮论文模板
- [gloss-awe](https://github.com/RolfBremer/gloss-awe) - 自动生成的术语表页（从 typst-glossary 改名而来）
- [in-dexter](https://github.com/RolfBremer/in-dexter) - 自动生成的索引页（从 typst-index 改名而来）
- [simple-typst-thesis](https://github.com/zagoli/simple-typst-thesis) - 用于撰写简单论文的 Typst 模板
- [typst-invoice](https://github.com/erictapen/typst-invoice) - 从 TOML 文件生成发票
- [typst-orange-template](https://github.com/flavio20002/typst-orange-template) - 受 Legrand Orange Book 启发的 Typst 书籍模板
- [typst-palettes](https://github.com/kaarmu/typst-palettes) - Typst 的颜色调色板库
- [typst-templates](https://github.com/eigenein/typst-templates) - Typst 模板
- [typst-templates](https://github.com/haxibami/typst-template) - 我的 Typst 模板
- [typst-uwthesis](https://github.com/yangwenbo99/typst-uwthesis) - 用于撰写论文的 Typst 模板，具有工作缩写列表功能
- [typstry](https://github.com/qjcg/typstry) - Typst 模板和示例的编织
- [tyspt-mla9-template](https://github.com/wychwitch/tyspt-mla9-template) - MLA 第 9 版模板
- [writable-gm-screen-inserts](https://github.com/LLBlumire/writable-gm-screen-inserts) - 可涂写的 GM 帷幕的内页
- [french-association-status](https://github.com/coco33920/typst-association-status) - 用于法国协会编写状态的模板
- [aiaa-typst-template](https://gitlab.com/waterlubber/aiaa-typst-template) - 用于AIAA（美国航空航天学会）论文的模板。
- [SimpleNote](https://github.com/a-kkiri/SimpleNote) - 用于编写简易课程笔记的 Typst 模板
- [mcm-icm-typst-template](https://github.com/DawnEver/mcm-icm-typst-template) - 美国大学生数学建模比赛（美赛, MCM/ICM） Typst 模版.
- [CUMCM-typst-template](https://github.com/a-kkiri/CUMCM-typst-template) - 高教社杯全国大学生数学建模比赛（CUMCM）Typst 模版
- [caidan](https://github.com/cu1ch3n/caidan) - 用于编写菜单的简洁模板

### 作业

- [assignment-template](https://github.com/AntoniosBarotsis/typst-assignment-template) - 简单的作业模板
- [typst-assignment-template](https://github.com/astrale-sharp/typst-assignement-template.git) - 又一个简单的作业模板
- [typst-assignment-template](https://github.com/gRox167/typst-assignment-template.git) - 具有封面和多个有用数学符号的另一个简单作业模板
- [Typst-Assignment-Template](https://github.com/hongjr03/Typst-Assignment-Template) - 基于 gRox167 的模板修改的美观的中文作业模板
- [typst-homework-template](https://github.com/OriginCode/typst-homework-template) - 受到 Adam Blank LaTeX 作业模板启发的简单作业模板
- [typst-teacher-template](https://github.com/jomaway/typst-teacher-templates) - 用于创建我的课程工作表和考试的 Typst 模板的集合
- [OUC-Typst-Assignment-Templates](https://github.com/hongjr03/OUC-Typst-Assignment-Templates) - 使用 Typst 实现的中国海洋大学计算机专业部分实验报告模板

### CV

#### 示例

- [bare-bones-cv](https://github.com/caffeinatedgaze/bare-bones-cv) – 一个包含必要要素的极简主义简历。它似乎与 ATS 非常兼容。

#### 模板

- [typst-academic-cv](https://github.com/DawnEver/typst-academic-cv) - Typst 学术 CV 模版
- [alta-typst](https://github.com/GeorgeHoneywood/alta-typst) - 简单的 Typst CV 模板，灵感来自 AltaCV by LianTze Lim
- [attractive-typst-resume](https://github.com/Harkunwar/attractive-typst-resume) - Harkunwar Kochar 制作的现代、吸引人的 CV/简历模板
- [awesomeCV-Typst](https://github.com/mintyfrankie/awesomeCV-Typst) - 受 LaTeX `Awesome-CV` 项目启发的具有多语言支持等特点的 CV 模板
- [billryan-typst](https://github.com/gvariable/billryan-typst) - 受 Billryan 制作的简单和极简主义的简历模板启发
- [cv.typ](https://github.com/jskherman/cv.typ) - 使用 Typst 和 YAML 版本控制 CV 数据的无花样简历模板
- [moderncv.typst](https://github.com/giovanniberti/moderncv.typst) - 受 LaTeX 的 `moderncv` 启发的 CV 模板
- [resume.typ](https://github.com/wusyong/resume.typ) - 生成简历和 CV 的简单、人体工程学模板
- [typst-cv-miku](https://github.com/ice-kylin/typst-cv-miku) - 为 Typst 制作的简单、优雅、学术风格的 CV 模板。支持英语和中文等多语言
- [typst-cv-resume](https://github.com/jxpeng98/Typst-CV-Resume) - 使用 Sans 字体受到 LaTeX `Deedy-Resume` 启发的 CV 模板
- [typst-cv-template1](https://github.com/vaibhavjhawar/typst-cv-template1) - 受 Alessandro Plasmati 的 Graduate CV LaTeX 模板启发的 CV 模板
- [typst-cv-template](https://github.com/skyzh/typst-cv-template) - 适用于 Typst 的中文 CV 模板
- [typst-mixed-resume](https://github.com/titaneric/typst-mixed-resume) - 受多个模板启发的随意而优雅的简历模板
- [typst-neat-cv](https://github.com/UntimelyCreation97/typst-neat-cv) - 一种现代、简约和优雅的Typst简历模板，灵感来自于 mintyfrankie 的`Brilliant CV`。
- [typst-resume-sans](https://github.com/mizlan/typst-resume-sans) - 时尚而朴素的无衬线字体简历模板
- [typst-resume-template](https://github.com/bamboovir/typst-resume-template) - 受 Awesome-CV 项目启发的美观样式
- [typst-resume-template](https://github.com/hexWars/resume) - 使用 Typst 设计的漂亮简历模板
- [typst-twentysecondcv](https://github.com/tomowang/typst-twentysecondcv) - 受 LaTeX 的 `Twenty Seconds Resume/CV` 启发的 CV 模板
- [typst-yaml-cv](https://github.com/daxartio/cv) - 使用 Typst 和 YAML 设计的简历模板
- [vercanard](https://github.com/elegaanz/vercanard) - 适用于 Typst 的多彩简历模板
- [Chinese-Resume-in-Typst](https://github.com/OrangeX4/Chinese-Resume-in-Typst) - 使用 Typst 编写的中文简历, 语法简洁, 样式美观, 开箱即用, 可选是否显示照片
- [neet-cv](https://github.com/kznr02/neet-cv) - 作者自用后开源的一份使用typst自制的中文简历模板，具有简单的使用方法，其中有部分参考`wondercv`，开箱即用，简洁美观。
- [serif-chinese-cv](https://github.com/MondayCha/chinese-cv) - 双色中文简历，使用衬线字体，基于 [chicv](https://github.com/skyzh/chicv) 改造。
- [Chinese-Resume-in-Typst-PhD](https://github.com/TimoLin/Chinese-Resume-in-Typst-PhD) - 基于`Chinese-Resume-in-Typst`简历开发，适用于硕/博士求职，更加灵活地管理和展示你的项目经历 。

### 日历 / 课程表

- [typst-timetable](https://github.com/ludwig-austermann/typst-timetable) - 课程表模板

### 脚注和尾注

- [notes.typ](https://github.com/tbug/notes.typ) - 具有去重和自定义功能的注释库
- [typst-notes](https://github.com/saadulkh/typst-notes) - Typst 中添加脚注和尾注的库

### 格式

- [metro](https://github.com/fenjalien/metro) - 用于添加排版单位的 Typst 包
- [ruby-typ](https://github.com/rinmyo/ruby-typ) - 用于添加 Ruby 文本的库
- [showybox](https://github.com/Pablo-Gonzalez-Calderon/showybox-package) - 创建多彩且可自定义的框的 Typst 包
- [simple-poem-typst](https://github.com/asibahi/simple-poem-typst) - 使用 `measure` 函数设置阿拉伯诗歌的应用程序
- [syntastica-typst](https://github.com/RubixDev/syntastica-typst/) - 用于代码块的 Tree-sitter 语法高亮
- [typst-ansi_render](https://github.com/8LWXpg/typst-ansi_render) - 使用 ANSI 转义序列呈现文本的库
- [typst-boxes](https://github.com/lkoehl/typst-boxes) - 用于绘制多彩框的库
- [typst-codelst](https://github.com/jneug/typst-codelst) - 用于呈现源代码的 Typst 包
- [typst-diagbox](https://github.com/PgBiel/typst-diagbox) - 用于 Typst 表格中的对角线分隔线的库
- [typst-tablex](https://github.com/PgBiel/typst-tablex) - 更强大和可定制的 Typst 表格
- [typst-tablem](https://github.com/OrangeX4/typst-tablem) - 在 Typst 中轻松编写类 markdown 表格

### 图形

- [CeTZ](https://github.com/johannes-wolf/typst-canvas) - 用于 [Typst](https://typst.app) 绘图的库，其 API 受到 TikZ 和 [Processing](https://processing.org/) 的启发。它附带用于绘制图表、图形和图表的模块。
- [typst-raytracer](https://github.com/SeniorMars/typst-raytracer) - Typst 中的光线追踪器

### 信件

- [typst-letter](https://github.com/dvdvgt/typst-letter) - 受 DIN 5008 标准启发的 Typst 信件模板
- [typst-letter-template](https://github.com/pascal-huber/typst-letter-template) - 具有不同预设（DIN 5008、Swiss C5）的可定制 Typst 信件模板

### 语言学

- [leipzig-gloss](https://gitea.everydayimshuflin.com/greg/typst-lepizig-glossing) - 提供根据 Leipzig 规则创建辞典规则的基本库
- [typst-ipa](https://github.com/imatpot/typst-ipa) - 用于 Typst 的 ASCII / IPA 转换

### 数学

- [commute](https://gitlab.com/giacomogallina/commute) - 用于创建交换图的库
- [typst-algorithms](https://github.com/platformer/typst-algorithms) - 用于编写算法的库
- [typst-himcm-template](https://github.com/EvanLuo42/typst-himcm-template) - 针对 Typst 的 HiMCM 模板
- [typst-math-template](https://github.com/matthiasGmayer/typst-math-template) - 一个简单的数学模板，允许编号、可引用的定理以及对使用引用的子文件进行编译。
- [typst-pf3](https://github.com/maxwell-thum/typst-pf3) - 用于创建“结构化证明”的小型包。本质上是 Leslie Lamport 的 `pf2.sty` 移植
- [typst-theorems](https://github.com/sahasatvik/typst-theorems) - 用于创建带编号的定理环境的库
- [typst-undergradmath](https://github.com/johanvx/typst-undergradmath) - Typst 对 [undergradmath](https://gitlab.com/jim.hefferon/undergradmath) 的移植

### 音乐

- [conchord](https://github.com/sitandr/conchord) - 用于轻松编写带和弦的歌词并生成多彩的指板图的 Typst 包
- [typst-chords](https://github.com/ljgago/typst-chords) - 用于在 Typst 中编写带弦图的歌词的库

### 物理

- [physics](https://github.com/Leedehai/typst-physics) - 用于常见物理符号表示的库，例如向量和矢量场、矩阵、微分、导数、Dirac 括号、张量、同位素和数字信号序列。

### 会议

- [aiaa-typst](https://github.com/isaacew/aiaa-typst) - 一种按照美国航空航天学会风格创建会议论文的模板。
- [ieee-conference-typst-template](https://github.com/DawnEver/ieee-conference-typst-template) - 用于撰写 Typst 的 IEEE 会议模板
- [ieee-typst-template](https://github.com/bsp0109/ieee-typst-template) - 用于撰写 Typst 的 IEEE 论文模板
- [ifacconf-typst](https://github.com/avonmoll/ifacconf-typst) - 一种按照国际自动控制联合会风格创建的模板

### 期刊

- [ieee-trans-typst](https://github.com/p4perf4ce/typst-ieee-trans-template) - 模仿 LaTeX IEEE 汇刊 (Transactions) 模板（`ieee-trans.cls`）的模板
- [xdu-journal-alike-typst](https://github.com/BenderBlog/xdu-journal-alike-typst) - 仿西电学报论文模板编写的 Typst 模板，可用于大作业编写
- [journal-of-software-alike-typst](https://github.com/BenderBlog/journal-of-software-alike-typst) - 仿软件学报论文模板编写的 Typst 模板，可用于大作业编写

### 基金/提案

- [typst-nsf-templates](https://github.com/ntjess/typst-nsf-templates) - 国家科学基金会（NSF）通用模板和常见提案类型的大纲。

### 工程

- [circuitypst](https://github.com/fenjalien/circuitypst) - 用于绘制电子电路原理图的库
- [typst-bytefield](https://github.com/jomaway/typst-bytefield) - 用于绘制（网络）协议头的库
- [tids](https://github.com/oldrev/tids) - TI 风格的电子元件规格书模板

### 绘图

- [typst-cd](https://gitlab.com/giacomogallina/typst-cd) - 用于创建类似 Tikz 的交换图的概念验证
- [typst-plot](https://github.com/johannes-wolf/typst-plot) - 用于绘制折线图的库（已不再推荐使用，推荐使用 CeTZ）
- [typst-plotting](https://github.com/Pegacraft/typst-plotting) - 用于绘制各种图表和图形的库，如折线图、直方图和饼图

### 海报

- [typst-poster](https://github.com/pncnmnp/typst-poster) - 一种学术海报模板
- [science-posters](https://github.com/jonaspleyer/science-posters) - 创建块风格的学术海报

### 脚本

- [typst-oxifmt](https://github.com/PgBiel/typst-oxifmt) - Typst 中方便的类似 Rust 的字符串格式化
- [typst-tools4typst](https://github.com/jneug/typst-tools4typst) - 用于包和模板作者的工具。

### 幻灯片

- [diapo](https://github.com/lvignoli/diapo) - 一种极简和简约的演示模板。
- [polylux](https://github.com/andreasKroepelin/polylux) - 在 Typst 中创建演示幻灯片
- [pinit](https://github.com/OrangeX4/typst-pinit) - 用于更好地在 Typst 中编写 Slides 的相对定位工具包
- [touying](https://github.com/touying-typ/touying) - 一个更强大的演示幻灯片包，包含许多内置模板和 [中文文档](https://touying-typ.github.io/zh/docs/intro/)
