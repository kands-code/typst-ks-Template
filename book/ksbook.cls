% author: Kevin Stephen (kizunaaisesu@gmail.com)
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ksbook}
[2023/09/11 v0.3.2 Kevin Stephen's book template]

% based on article
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
%% reduce some unnecessary warnings
\PassOptionsToPackage{quiet}{fontspec}
\PassOptionsToPackage{quiet}{xeCJK}
\ProcessOptions{\relax}
%% load book class with basic settings
\LoadClass[12pt,a4paper,twoside]{book}
%% must use LuaLaTeX
\RequirePackage{iftex}
\RequireLuaTeX

% load some packages
%% for cjk input
\RequirePackage[fontset=none]{ctex}
%% for protecting verbatim contents
\RequirePackage{verbdef}
\RequirePackage{cprotect}
%% for some counters
\RequirePackage{chngcntr}
\counterwithin*{figure}{chapter}
\counterwithin*{table}{chapter}
\counterwithin*{equation}{chapter}
%% some special symbols
%%% Optional: footnotes symbols
% \RequirePackage[perpage,symbol*]{footmisc}
%%% emoji
\RequirePackage{emoji}
%% page style setting
\RequirePackage[top=25mm,bottom=25mm,left=25mm,right=25mm]{geometry}
\RequirePackage{pdfpages}
\newcommand{\Cls}{\clearpage{\thispagestyle{empty}\cleardoublepage}}
%% set linespacing
\renewcommand*{\baselinestretch}{1.38}
%% for math
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{dsfont}
\RequirePackage{latexsym}
\RequirePackage[bold-style=ISO]{unicode-math}
\RequirePackage{titletoc}
%% graphicx
\RequirePackage{graphicx}
\RequirePackage{float}
\DeclareGraphicsExtensions{.svg,.pdf,.eps,.jpg,.png}
\graphicspath{
  {figures/}
    {figure/}
    {pictures/}
    {picture/}
    {pic/}
    {pics/}
    {image/}
    {images/}
}
%% tables
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{multicol}
\RequirePackage{bigstrut}
\RequirePackage{bigdelim}
\RequirePackage{enumitem}
%%% nice matrix
\RequirePackage{nicematrix}
\NiceMatrixOptions{cell-space-limits = 1pt}
%% draw and codes
\RequirePackage{tikz}
\usetikzlibrary{
  quotes,
  arrows.meta,
  automata,
  backgrounds,
  er}
\RequirePackage[
  langlinenos=true
]{minted}
\usemintedstyle{sas}
\setminted{
  linenos=true,
  mathescape=true,
  python3=true,
  fontsize=\small
}
%% indent first line
\RequirePackage{indentfirst}
\setlength\parindent{2em}
%% set captions
\RequirePackage{caption}
%% underline
\RequirePackage[normalem]{ulem}
\RequirePackage{calc}
%% hyper
\RequirePackage[hyphens]{url}
\RequirePackage[urlcolor=blue]{hyperref}
\AtBeginDocument{
  \hypersetup{
    pageanchor=true,
    bookmarksnumbered=true,
    bookmarksopen=true,
    bookmarksopenlevel=0,
    plainpages=false,
    pdfborder=0 0 0,
  }
}
\urlstyle{same}
\PassOptionsToPackage{unicode}{hyperref}
\PassOptionsToPackage{naturalnames}{hyperref}
%% fancyhdr
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\setlength{\headheight}{13.07pt}
\addtolength{\topmargin}{-0.07pt}
%% biblatex
\RequirePackage[
  backend=biber,
  %%% use gb7714-2015
  style=gb7714-2015,
  %%% or set `bibstyle' and `citestyle'
  % citestyle=numeric-comp,
  % bibstyle=phys,
  sortlocale=zh_CN,
  defernumbers=true,
  natbib=true,
  url=true,
  doi=true,
  eprint=true
]{biblatex}

% Optional: set chinese replace
\newcommand*{\kstex@cap@abstractname}{摘\hspace{1em}要}
\newcommand*{\kstex@cap@contentsname}{目\hspace{1em}录}
\newcommand*{\kstex@cap@revisionhistory}{修订历史}
\newcommand*{\kstex@cap@listfigurename}{插图清单}
\newcommand*{\kstex@cap@listtablename}{附表清单}
\newcommand*{\kstex@cap@listsymbolname}{符号清单}
\newcommand*{\kstex@cap@listequationname}{公式清单}
\newcommand*{\kstex@cap@equationname}{公式}
\newcommand*{\kstex@cap@indexname}{索\hspace{1em}引}
\newcommand*{\kstex@cap@figurename}{图}
\newcommand*{\kstex@cap@tablename}{表}
\newcommand*{\kstex@cap@preface}{前\hspace{1em}言}
\newcommand*{\kstex@cap@acknowledgementname}{致\hspace{1em}谢}
\newcommand*{\kstex@cap@appendixname}{附录\hspace{0.5em}\chinese{\arabic{chapter}}}
\newcommand*{\kstex@cap@definition}{定义}
\newcommand*{\kstex@cap@notation}{记号}
\newcommand*{\kstex@cap@theorem}{定理}
\newcommand*{\kstex@cap@lemma}{引理}
\newcommand*{\kstex@cap@corollary}{推论}
\newcommand*{\kstex@cap@proposition}{命题}
\newcommand*{\kstex@cap@fact}{事实}
\newcommand*{\kstex@cap@assumption}{假设}
\newcommand*{\kstex@cap@conjecture}{猜想}
\newcommand*{\kstex@cap@hypothesis}{假说}
\newcommand*{\kstex@cap@axiom}{公理}
\newcommand*{\kstex@cap@postulate}{公设}
\newcommand*{\kstex@cap@principle}{定律}
\newcommand*{\kstex@cap@problem}{问题}
\newcommand*{\kstex@cap@exercise}{练习}
\newcommand*{\kstex@cap@example}{例}
\newcommand*{\kstex@cap@remark}{评注}
\newcommand*{\kstex@cap@proof}{证明}
\newcommand*{\kstex@cap@solution}{解}
\newcommand*{\kstex@cap@algorithm}{算法}
\newcommand*{\kstex@cap@case}{情况}
\newcommand*{\kstex@cap@subcase}{子情况}
\newcommand*{\kstex@cap@step}{步骤}
\newcommand*{\kstex@cap@substep}{子步骤}
\newcommand*{\kstex@cap@year}{年}
\newcommand*{\kstex@cap@month}{月}
\newcommand*{\kstex@cap@day}{日}
\newcommand*{\kstex@cap@to}{至}

% set fonts
\directlua{luaotfload.add_fallback(
  "emojifallback",
  {
      "Sarasa Mono Slab SC:mode=harf;"
      ,"Apple Color Emoji:mode=harf;"
    })}
% \directlua{luaotfload.add_fallback(
%     "emojifallback",
%     {"Segoe UI Emoji:mode=harf;"}
%     )}

\newcommand*{\kstex@zhft@songti}{Source Han Serif SC}
% \newcommand*{\kstex@zhft@songti}{SimSun}
\newcommand*{\kstex@zhft@heiti}{Source Han Sans SC}
% \newcommand*{\kstex@zhft@heiti}{SimHei}
\newcommand*{\kstex@zhft@kaishu}{LXGW WenKai}
\newcommand*{\kstex@zhft@fangsong}{Zhuque Fangsong (technical preview)}
\newcommand*{\kstex@zhft@mono}{Sarasa Mono Slab SC}
\newcommand*{\kstex@enft@main}{Times New Roman}
\newcommand*{\kstex@enft@sans}{\kstex@zhft@heiti}
\newcommand*{\kstex@enft@mono}{Fira Code Retina}
% \newcommand*{\kstex@enft@mono}{Consolas}
%% for CJK
\setCJKfamilyfont{song}[AutoFakeBold]{\kstex@zhft@songti}
\setCJKfamilyfont{hei}[AutoFakeBold]{\kstex@zhft@heiti}
\setCJKfamilyfont{kai}[AutoFakeBold]{\kstex@zhft@kaishu}
\setCJKfamilyfont{fangsong}[AutoFakeBold]{\kstex@zhft@fangsong}
\setCJKmainfont[RawFeature={fallback=emojifallback},
  BoldFont={\kstex@zhft@heiti},
  ItalicFont={\kstex@zhft@kaishu}]{\kstex@zhft@songti}
\setCJKsansfont[RawFeature={fallback=emojifallback},
  AutoFakeSlant]{\kstex@zhft@heiti}
\setCJKmonofont[RawFeature={fallback=emojifallback},
  AutoFakeBold,
  AutoFakeSlant]{\kstex@zhft@mono}
% \setCJKmonofont{\song}
\setmainfont[RawFeature={fallback=emojifallback}]{\kstex@enft@main}
\setsansfont[RawFeature={fallback=emojifallback},
  AutoFakeSlant]{\kstex@enft@sans}
\setmonofont[RawFeature={fallback=emojifallback},
  AutoFakeBold,
  AutoFakeSlant]{\kstex@enft@mono}
%% set some font shortcut
\newcommand*{\songti}{\CJKfamily{song}}
\newcommand*{\hei}{\CJKfamily{hei}}
\newcommand*{\heiti}{\CJKfamily{hei}}
\newcommand*{\kaishu}{\CJKfamily{kai}}
\newcommand*{\fangsong}{\CJKfamily{fangsong}}
\renewcommand{\textsc}[1]{{\usefont{OT1}{cmr}{m}{sc}{#1}}}
\newcommand{\dashnumber}[2]{{#1}\kern.07em\rule[.5ex]{.4em}{.15ex}\kern.07em{#2}}
%% set some counter number
\renewcommand*{\thefigure}{\dashnumber{\arabic{section}}{\arabic{figure}}}
\renewcommand*{\thetable}{\dashnumber{\arabic{section}}{\arabic{table}}}
\renewcommand*{\theequation}{\dashnumber{\arabic{section}}{\arabic{equation}}}

% math environments
\newtheorem{definition}{\kstex@cap@definition}[chapter]
\newtheorem{notation}[definition]{\kstex@cap@notation}
\newtheorem{theorem}{\kstex@cap@theorem}[chapter]
\newtheorem{lemma}[theorem]{\kstex@cap@lemma}
\newtheorem{corollary}[theorem]{\kstex@cap@corollary}
\newtheorem{proposition}[theorem]{\kstex@cap@proposition}
\newtheorem{fact}[theorem]{\kstex@cap@fact}
\newtheorem{assumption}[theorem]{\kstex@cap@assumption}
\newtheorem{conjecture}[theorem]{\kstex@cap@conjecture}
\newtheorem{hypothesis}{\kstex@cap@hypothesis}[chapter]
\newtheorem{axiom}{\kstex@cap@axiom}[chapter]
\newtheorem{postulate}{\kstex@cap@postulate}[chapter]
\newtheorem{principle}{\kstex@cap@principle}[chapter]
\newtheorem{problem}{\kstex@cap@problem}[chapter]
\newtheorem{exercise}{\kstex@cap@exercise}[chapter]
\newtheorem{example}{\kstex@cap@example}[chapter]
\newtheorem{remark}{\kstex@cap@remark}[chapter]
\newenvironment{solution}[1][\kstex@cap@solution]{
  \par
  \normalfont
  \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep\textbf{#1}\@addpunct{:}]\ignorespaces
}{\endtrivlist\@endpefalse}
\renewenvironment{proof}[1][\kstex@cap@proof]{
  \par
  \pushQED{\qed}
  \normalfont
  \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep\textbf{#1}\@addpunct{:}]\ignorespaces
}{\popQED\endtrivlist\@endpefalse}
%% algorithm seudocode
\newtheorem{algorithm}{\kstex@cap@algorithm}[chapter]
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\renewcommand{\algorithmicrequire}{ \textbf{输入:}}
\renewcommand{\algorithmicensure}{ \textbf{输出:}}
\floatname{algorithm}{算法}
%% numbering some environment
\renewcommand*{\thedefinition}{\dashnumber{\arabic{chapter}}{\arabic{definition}}}
\renewcommand*{\thetheorem}{\dashnumber{\arabic{chapter}}{\arabic{theorem}}}
\renewcommand*{\theaxiom}{\dashnumber{\arabic{chapter}}{\arabic{axiom}}}
\renewcommand*{\theproblem}{\dashnumber{\arabic{chapter}}{\arabic{problem}}}
\renewcommand*{\theexercise}{\dashnumber{\arabic{chapter}}{\arabic{exercise}}}
\renewcommand*{\theexample}{\dashnumber{\arabic{chapter}}{\arabic{example}}}
\renewcommand*{\theremark}{\dashnumber{\arabic{chapter}}{\arabic{remark}}}

% set floating environment
\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}

% use chinese name
\renewcommand*{\abstractname}{\kstex@cap@abstractname}
\renewcommand*{\contentsname}{\hfill\hei\zihao{-2}\kstex@cap@contentsname\hfill}
\renewcommand*{\listfigurename}{\kstex@cap@listfigurename}
\renewcommand*{\listtablename}{\kstex@cap@listtablename}
\newcommand*{\listsymbolname}{\kstex@cap@listsymbolname}
\newcommand*{\listequationname}{\kstex@cap@listequationname}
\renewcommand*{\indexname}{\kstex@cap@indexname}
\newcommand*{\equationname}{\kstex@cap@equationname}
\renewcommand*{\figurename}{\kstex@cap@figurename}
\renewcommand*{\tablename}{\kstex@cap@tablename}
\renewcommand*{\appendixname}{\kstex@cap@appendixname}

% % book title
% \RequirePackage{titlesec}
% \renewcommand{\thesection}{第\arabic{chapter}章}
% \renewcommand{\thesubsection}{\arabic{chapter}.\arabic{section}}
% %% title format
% \titleformat{\chapter}[hang]
% {\hei\zihao{-2}}
% {\thesection}
% {1ex}
% {\centering}
% \titleformat{\subsection}[hang]
% {\hei\zihao{-3}}
% {\thesubsection}
% {1ex}
% {}
% \titleformat{\subsubsection}[hang]
% {\hei\zihao{4}}
% {\thesubsubsection}
% {1ex}
% {}
% \titlecontents{section}[0pt]{\vspace{2mm}\hei\zihao{4}}
% {\thecontentslabel\hskip.5em}
% {}
% {\titlerule*[0.5pc]{.}\contentspage}
% \titlecontents{subsection}[30pt]{\hei\zihao{4}}
% {\thecontentslabel\hskip.5em}
% {}
% {\titlerule*[0.5pc]{.}\contentspage}
% \titlecontents{subsubsection}[55pt]{\hei\zihao{4}}
% {\thecontentslabel\hskip.5em}
% {}
% {\titlerule*[0.5pc]{.}\contentspage}

% figure and table setting
\DeclareCaptionFont{hei}{\hei}
\DeclareCaptionFont{wuhao}{\zihao{5}}
\DeclareCaptionFont{shiyi}{\normalsize}
\captionsetup[figure]{
  format=hang,
  labelsep=quad,
  font={hei,shiyi,bf},
  position=bottom,
}
\captionsetup[table]{
  format=hang,
  labelsep=quad,
  font={hei,wuhao,bf},
  position=top,
}
\floatstyle{plaintop}
\restylefloat{table}
\let\convertergy@oldtabular\tabular
\let\convertergy@endoldtabular\endtabular
\renewenvironment{tabular}{
  \bgroup
  \renewcommand{\arraystretch}{1.2}
  \convertergy@oldtabular
}{
  \convertergy@endoldtabular
  \egroup
}
%% lists
\setlist{
  topsep=0.3em,
  partopsep=0pt,
  itemsep=0ex plus 0.1ex,
  parsep=0pt,
  leftmargin=1.5em,
  rightmargin=0em,
  labelsep=0.5em,
  labelwidth=2em,
}
\setlist[itemize,1]{label=$\vcenter{\hbox{\large$\bullet$}}$}
\setlist[itemize,2]{label=$\vcenter{\hbox{\small$\blacksquare$}}$}
\setlist[itemize,3]{label=$\vcenter{\hbox{\small$\Diamondblack$}}$}
\renewenvironment{quote}{
  \list{}{\leftmargin=4em\rightmargin=4em}\item[]
}{\endlist}
\renewenvironment{quotation}{
  \list{}{\leftmargin=4em\rightmargin=4em}\item[]
}{\endlist}

\endinput
