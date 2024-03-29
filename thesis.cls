\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{thesis}[2007/10/19 v1.0]
\LoadClass[14pt,a4paper,BCOR=.7cm,headsepline,bibliography=totoc]{scrbook}
\renewcommand\headfont{\small\itshape}
\renewcommand*\sectfont{\normalcolor\bfseries}
\DeclareOption{MsThesis}{\AtEndOfPackage{\def\@fordegree{\if@Latin Ms
Thesis\else پایان‌نامه کارشناسی ارشد\fi}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions
\RequirePackage{amsmath,amsthm}
%حاشیه در اینجا مشخص می‌شود.
\newlength\OddM@rg
\if@twoside\def\sw@pmargs{\oddsidemargin\evensidemargin}\else
\def\sw@pmargs{
  \OddM@rg\paperwidth \addtolength\OddM@rg{-\textwidth}
\addtolength\OddM@rg{-\oddsidemargin} \addtolength\OddM@rg{-2\hoffset}
\addtolength\OddM@rg{-2in} \oddsidemargin\OddM@rg}
\sw@pmargs \fi
\sloppy\parindent1.5em
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\PrepareForBiblio{\cleardoubleemptypage\pagestyle{plain
}\backmatter\baselineskip0.8\baselineskip}

\def\PrepareForLatinPages{\cleardoubleemptypage\pagestyle{empty}\sw
@pmargs\latin}
% Abstract %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{abstract}[1]
{\def\@pkeywds{#1}\cleardoubleemptypage\begin{center}\Large\bfseries\st
@title\end{center}\subsection*{\if@Latin Abstract\else چکیده\fi}\begin{quote}}
{\end{quote}\paragraph*{\if@Latin Keywords\else کلمات
کلیدی\fi:}{\@pkeywds.}\cleardoubleemptypage}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\let\origin@lmaketitle\maketitle
\def\makethesistitle{
  \def\@titlehead{\centering\st@logo\\\smallskip\large\st@university}
  \def\@title{\st@title}
  \def\@subject{\@fordegree\\\st@subject}
  \def\@author{{\normalsize\@by}\\{\st@author} \\[1.5\bigskipamount]%
    {\normalsize\@undersup}\\{\itshape\st@supervisor}%
\ifdefined\st@consult\\[1.5\bigskipamount]{\normalsize\@undercons}\\
{\itshape\st@consult}\fi
    \\[1.5\bigskipamount]}
\def\@date{\ifdefined\st@date\st@date\else\if@Latin\latintoday\else\today\fi\fi}
  \origin@lmaketitle
  \newcommand\date[1]{\def\st@date{##1}}
  \newcommand\title[1]{\def\st@title{##1}}
  \newcommand\author[1]{\def\st@author{##1}}
  \newcommand\subject[1]{\def\st@subject{##1}}}
  
\renewcommand\date[1]{\def\st@date{#1}}
\renewcommand\title[1]{\def\st@title{#1}}
\renewcommand\author[1]{\def\st@author{#1}}
\renewcommand\subject[1]{\def\st@subject{#1}}
\newcommand\logo[1]{\def\st@logo{#1}}
\newcommand\university[1]{\def\st@university{#1}}
\newcommand\supervisor[1]{\def\st@supervisor{#1}}
\def\@undersup{\if@Latin Supervisor\else استاد راهنما\fi}
\def\@by{\if@Latin By\else نگارش\fi}
\def\@fordegree{\if@Latin B.Sc Thesis\else پایان‌نامه کارشناسی\fi}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\thetheorem{\thechapter\@SepMark\arabic{theorem}}
%\newtheorem{theorem}{قضیه}[chapter]
%\newtheorem{definition}[theorem]{تعریف}
%\newtheorem{notation}[theorem]{قرارداد}
%\newtheorem{proposition}[theorem]{گزاره}
%\newtheorem{lemma}[theorem]{لم}
%\newtheorem{remark}[theorem]{تذکر}
%\newtheorem{example}[theorem]{مثال}
%\def\localisecommands{
%\eqcommand{دانشگاه}{university}
%\eqcommand{موضوع}{subject}
%\eqcommand{استادراهنما}{supervisor}
%\eqcommand{استادمشاور}{consult}
%\eqcommand{آرم}{logo}
%\eqcommand{تقدیم}{dedication}
%\eqenvironment{اثبات}{proof}
%\eqenvironment{لم}{lemma}
%\eqenvironment{قضیه}{theorem}
%\eqenvironment{تذکر}{remark}
%\eqenvironment{گزاره}{proposition}
%\eqenvironment{قرارداد}{notation}
%\eqenvironment{تعریف}{definition}
%\eqenvironment{مثال}{example}}