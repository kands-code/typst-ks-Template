% author: Kevin Stephen (kizunaaisesu@gmail.com)
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ksbeamer}
[2023/09/11 v0.3.2 Kevin Stephen's beamer template]

% based on article
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
%% reduce some unnecessary warnings
\PassOptionsToPackage{quiet}{fontspec}
\PassOptionsToPackage{quiet}{xeCJK}
\ProcessOptions{\relax}
%% load beamer class with basic settings
\LoadClass[14pt,
    xcolor=dvipsnames,
    aspectratio=169,
    noamsthm,
    notheorems
]{beamer}
\RequirePackage{pdfpages}
%% must use LuaLaTeX
\RequirePackage{iftex}
\RequireLuaTeX

% load some packages
\RequirePackage[fontset=none]{ctex}
%% beamer theme
\RequirePackage{tikz}
\usetikzlibrary{quotes}
\RequirePackage{emoji}
\RequirePackage{pdfpages}
%%% theme configuration
\RequirePackage{tikzlings}
\usetheme[hideothersubsections]{Goettingen}
\setbeamertemplate{sidebar canvas \beamer@sidebarside}{
    \color{red!16}
    \rule{\beamer@sidebarwidth}{\paperheight}
    \vspace*{-0.6\paperheight}
    \hspace*{-0.24\paperheight}
    \begin{tikzpicture}
        \pgfsetfillopacity{0.4}
        \includegraphics[width=0.2\paperheight]{pics/icon.png}
    \end{tikzpicture}
}
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
%% graphicx
\RequirePackage{graphicx}
\RequirePackage{float}
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
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
\RequirePackage{pstricks}
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
\RequirePackage{ulem}
\RequirePackage{calc}
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
%% utils

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
\newcommand*{\kstex@cap@appendixname}{附录\hspace{0.5em}\chinese{\arabic{section}}}
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
    {"Segoe UI Emoji:mode=harf;"}
    )}
\newcommand*{\kstex@zhft@songti}{NSimSun}
% \newcommand*{\kstex@zhft@songti}{SimSun}
\newcommand*{\kstex@zhft@heiti}{Source Han Sans SC}
% \newcommand*{\kstex@zhft@heiti}{SimHei}
\newcommand*{\kstex@zhft@kaishu}{LXGW WenKai GB Fusion}
% \newcommand*{\kstex@zhft@kaishu}{KaiTi}
\newcommand*{\kstex@zhft@fangsong}{FangSong}
\newcommand*{\kstex@enft@main}{Times New Roman}
\newcommand*{\kstex@enft@sans}{\kstex@zhft@heiti}
\newcommand*{\kstex@enft@mono}{Cascadia Code PL}
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
    AutoFakeSlant]{LXGW WenKai Mono GB Fusion}
% \setCJKmonofont{\song}
\setmainfont[RawFeature={fallback=emojifallback}]{\kstex@enft@main}
\setsansfont[RawFeature={fallback=emojifallback},
    AutoFakeSlant]{\kstex@enft@sans}
\setmonofont[RawFeature={fallback=emojifallback}]{\kstex@enft@mono}
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
\newtheorem{definition}{\kstex@cap@definition}[section]
\newtheorem{notation}[definition]{\kstex@cap@notation}
\newtheorem{theorem}{\kstex@cap@theorem}[section]
\newtheorem{lemma}[theorem]{\kstex@cap@lemma}
\newtheorem{corollary}[theorem]{\kstex@cap@corollary}
\newtheorem{proposition}[theorem]{\kstex@cap@proposition}
\newtheorem{fact}[theorem]{\kstex@cap@fact}
\newtheorem{assumption}[theorem]{\kstex@cap@assumption}
\newtheorem{conjecture}[theorem]{\kstex@cap@conjecture}
\newtheorem{hypothesis}{\kstex@cap@hypothesis}[section]
\newtheorem{axiom}{\kstex@cap@axiom}[section]
\newtheorem{postulate}{\kstex@cap@postulate}[section]
\newtheorem{principle}{\kstex@cap@principle}[section]
\newtheorem{problem}{\kstex@cap@problem}[section]
\newtheorem{exercise}{\kstex@cap@exercise}[section]
\newtheorem{example}{\kstex@cap@example}[section]
\newtheorem{remark}{\kstex@cap@remark}[section]
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
\newtheorem{algorithm}{\kstex@cap@algorithm}[section]
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\renewcommand{\algorithmicrequire}{ \textbf{输入:}}
\renewcommand{\algorithmicensure}{ \textbf{输出:}}
\floatname{algorithm}{算法}
%% numbering some environment
\renewcommand*{\thedefinition}{\dashnumber{\arabic{section}}{\arabic{definition}}}
\renewcommand*{\thetheorem}{\dashnumber{\arabic{section}}{\arabic{theorem}}}
\renewcommand*{\theaxiom}{\dashnumber{\arabic{section}}{\arabic{axiom}}}
\renewcommand*{\theproblem}{\dashnumber{\arabic{section}}{\arabic{problem}}}
\renewcommand*{\theexercise}{\dashnumber{\arabic{section}}{\arabic{exercise}}}
\renewcommand*{\theexample}{\dashnumber{\arabic{section}}{\arabic{example}}}
\renewcommand*{\theremark}{\dashnumber{\arabic{section}}{\arabic{remark}}}

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
