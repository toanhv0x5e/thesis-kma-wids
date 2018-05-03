% CUEDthesis v1.1
% By Harish Bhanderi <harish.bhanderi@cantab.net
% Version 1.0 released 15/07/2002
% Version 1.1 released 14/07/2010
% -----------------------------------------------
% Modified by Toan Ha Van - toanhv.vietnam@gmail.com
% The Academy of Cryptography Techniques, Vietnam
% 04/05/2017
%-------------------------- identification ---------------------
%\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CUEDthesisPSnPDF}[2010/07/14 v1.1 CUED thesis class]
%-------------------------- initial code -----------------------
\newif\ifCU@bookmode
\CU@bookmodetrue

\DeclareOption{report}{\CU@bookmodefalse}
\DeclareOption{book}{\CU@bookmodetrue}
\ProcessOptions\relax%

\ifCU@bookmode
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}%
\ProcessOptions\relax%
\ifx\pdfoutput\undefined%
   \LoadClass[dvips,a4paper]{book}%
\else%
   \LoadClass[pdftex,a4paper]{book}%
\fi%
\else
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}%
\ProcessOptions\relax%
\ifx\pdfoutput\undefined%
  \LoadClass[dvips,a4paper]{report}%
\else%
   \LoadClass[pdftex,a4paper]{report}%
\fi%
%\renewcommand{\refname}{References}%
\fi

%\DeclareOption{book}{%
%}%
\usepackage{setspace}
\usepackage{tocbibind}
\usepackage{amssymb}

\usepackage{subfigure}
\usepackage{fancyhdr}
\usepackage{eucal}
%\usepackage[english]{babel}
\usepackage[usenames, dvipsnames]{color}
\usepackage[perpage]{footmisc}
%%\usepackage[square, sort, numbers, authoryear]{natbib}
\usepackage[square,comma,numbers,sort&compress]{natbib}
\usepackage{ifthen}
\usepackage{ifpdf}
\usepackage{hologo}

%%%% For typing Vietnamese %%%%%%%
\usepackage[utf8]{inputenc} % This for vietnamese 
\usepackage[vietnam]{babel} % This for vietnamese 
\usepackage{times}
\usepackage[14pt]{extsizes}
\usepackage[a4paper,left=3.5cm,right=2cm,top=3cm,bottom=3cm]{geometry}
\usepackage{fancybox}
\usepackage{indentfirst}
\usepackage{lipsum}
\usepackage{float} % figure position fixed with H
%\usepackage[overload]{textcase}
%table
\usepackage{booktabs}
\usepackage{multirow}
\usepackage[normalem]{ulem}
\usepackage[table,x11names]{xcolor}
\useunder{\uline}{\ul}{}

\usepackage{array}

%%%
\usepackage{listings}
\usepackage{color}
\usepackage{framed}
\usepackage{titling}

% replace itemize with enumitem to decrease line's space
\usepackage{enumitem}
%\setlist[itemize]{leftmargin=*}
\setitemize{noitemsep,topsep=0pt,parsep=2pt,partopsep=0pt,leftmargin=1.27cm}


%Bibliography
%uncomment next line to change bibliography name to references for Book document class
%\renewcommand{\bibname}{References}
% note that this doesn't do much if you later define another bibliography style 


% Nomenclature
\usepackage{nomencl}
\makenomenclature
\renewcommand\nomgroup[1]{%
  \ifthenelse{\equal{#1}{A}}{%
   \item[\textbf{Roman Symbols}] }{%             A - Roman
    \ifthenelse{\equal{#1}{G}}{%
     \item[\textbf{Greek Symbols}]}{%             G - Greek
      \ifthenelse{\equal{#1}{R}}{%
        \item[\textbf{Superscripts}]}{%              R - Superscripts
          \ifthenelse{\equal{#1}{S}}{%
           \item[\textbf{Subscripts}]}{{%             S - Subscripts
	    \ifthenelse{\equal{#1}{X}}{%
	     \item[\textbf{Other Symbols}]}{{%    X - Other Symbols
	    \ifthenelse{\equal{#1}{Z}}{%
	     \item[\textbf{Acronyms}]}%              Z - Acronyms
              			{{}}}}}}}}}}

\ifpdf

 

%-->
%--> Google.com search "hyperref options"
%--> 
%--> http://www.ai.mit.edu/lab/sysadmin/latex/documentation/latex/hyperref/manual.pdf
%--> http://www.chemie.unibas.ch/~vogtp/LaTeX2PDFLaTeX.pdf 
%--> http://www.uni-giessen.de/partosch/eurotex99/ oberdiek/print/sli4a4col.pdf
%--> http://me.in-berlin.de/~miwie/tex-refs/html/latex-packages.html
%-->
    \usepackage[ pdftex, plainpages = false, pdfpagelabels, 
                pdfpagelayout = OneColumn, % display single page, advancing flips the page - Sasa Tomic
                pdftitle={Research about Methodologies of Intrusion Detection for WiFi Networks},
                pdfsubject={Research about Methodologies of Intrusion Detection for WiFi Networks},
                pdfauthor={Toan Ha Van - toanhv.vietnam@gmail.com},
                pdfkeywords={WiFi Security; Wireless Intrusion Detection System; WiFi Access Point; Opensource Software; Kismet Wireless; Snort; OpenWrt},
                pdfproducer={Latex with hyperref},
                pdfcreator={pdflatex},
                pdfcreationdate={D:20170303031010},  %format D:YYYYMMDDhhmmss
                pdfmoddate={D:20170606031010},
                bookmarks=true,
                bookmarksopen=true,
                bookmarksnumbered=true,
                breaklinks=true,
                linktocpage=true,
                pagebackref=true,
                colorlinks=true, % false: boxed links; true: colored links
                linkcolor=blue,
                urlcolor =cyan,
                citecolor=red,
                anchorcolor=green,
                linkbordercolor={1 0 0},
                citebordercolor={0 1 0},
                urlbordercolor ={0 1 1},
                hyperindex=true,
                hyperfigures=true,
                unicode=true
    ]{hyperref} 
    \usepackage[pdftex]{graphicx}
    \DeclareGraphicsExtensions{.png, .jpg, .pdf}

    \pdfcompresslevel=9
    \graphicspath{{ThesisFigs/PNG/}{ThesisFigs/PDF/}{ThesisFigs/}}
\else
    \usepackage[ dvips, 
                 bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 pagebackref,
                 colorlinks = true,
                 linkcolor = blue,
                 urlcolor  = blue,
                 citecolor = red,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures,
                 unicode
                 ]{hyperref}

    %\usepackage{epsfig}
    \usepackage{graphicx}
    \DeclareGraphicsExtensions{.eps, .ps}
    \graphicspath{{ThesisFigs/EPS/}{ThesisFigs/}}
\fi

%define the page size including an offset for binding
%\setlength{\topmargin}{0.0in}
%\setlength{\oddsidemargin}{0in}
%\setlength{\evensidemargin}{0in}
%\setlength{\textheight}{700pt}
%\setlength{\textwidth}{500pt}


%A4 settings
\ifpdf
   \pdfpageheight=297mm
   \pdfpagewidth=210mm
\else
   \setlength{\paperheight}{297mm}
   \setlength{\paperwidth}{210mm}
\fi

\setlength{\hoffset}{0.00cm}
\setlength{\voffset}{0.00cm}

%\setlength{\evensidemargin}{1.96cm}
%%\setlength{\oddsidemargin}{-0.54cm}
%\setlength{\topmargin}{1mm}
%\setlength{\headheight}{1.36cm}
%\setlength{\headsep}{1.00cm}
%\setlength{\textheight}{20.84cm}
%\setlength{\textwidth}{14.5cm}
%\setlength{\marginparsep}{1mm}
%\setlength{\marginparwidth}{3cm}
%\setlength{\footskip}{2.36cm}

%--------------------------------
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{\thechapter. #1 }}{}}
\renewcommand{\sectionmark}[1]{}
\fancyhf{}

%\lhead{}
\chead{\small \thepage}
%\rhead{}
\lfoot{\small GVHD: TS. Nguyễn~Anh~Tuấn}
\cfoot{}
\rfoot{\small SVTH: Hà~Văn~Toàn}

%\fancyhead[RO]{\bfseries\rightmark}
%\fancyhead[LE]{\bfseries\leftmark}
%\fancyfoot[C]{\thepage}
%\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\headrulewidth}{0.5pt}
%\renewcommand{\footrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.5pt}
%\addtolength{\headheight}{0.5pt}
\fancypagestyle{plain}{
  \fancyhead{}
  %\renewcommand{\headrulewidth}{0pt}
}
%--------------------------------

%\pagestyle{fancy}
%\lhead{}
%\chead{\thepage}
%\rhead{}
%\lfoot{}
%\cfoot{}
%\rfoot{}
%\renewcommand{\headrulewidth}{0pt}
%\renewcommand{\footrulewidth}{0pt}

%\newcommand{\submittedtext}{{ĐỒ ÁN TỐT NGHIỆP ĐẠI HỌC}}
\newcommand{\submittedtext}{{ĐỒ ÁN TỐT NGHIỆP}}
%
%
% DECLARATIONS
%
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

% Grade
\def\grade#1{\gdef\@grade{#1}}
% Class
\def\class#1{\gdef\@class{#1}}
% Major
\def\major#1{\gdef\@major{#1}}
% Sub-Major
\def\submajor#1{\gdef\@submajor{#1}}
% Major code
\def\majorcode#1{\gdef\@majorcode{#1}}
% Supervisor 
\def\supervisor#1{\gdef\@supervisor{#1}}
% Supervisor's organization
\def\supervisororg#1{\gdef\@supervisororg{#1}}
\def\supervisororgext#1{\gdef\@supervisororgext{#1}}
% The year and term the degree will be officially conferred
\def\degreedate#1{\gdef\@degreedate{#1}}
% The full (unabbreviated) name of the degree
\def\degree#1{\gdef\@degree{#1}}
% The name of your college or department(eg. Trinity, Pembroke, Maths, Physics)
\def\collegeordept#1{\gdef\@collegeordept{#1}}
% The name of your University
\def\university#1{\gdef\@university{#1}}
% Defining the crest
\def\crest#1{\gdef\@crest{#1}}

% These macros define an environment for front matter that is always 
% single column even in a double-column document.

\newenvironment{alwayssingle}{%
       \@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
       \else\newpage\fi}
       {\if@restonecol\twocolumn\else\newpage\fi}

% define title page layout - template kma 01
%\renewcommand{\maketitle}{%
%\pagenumbering{roman} % Sasa Tomic
%\setcounter{page}{0}  % Sasa Tomic
%\begin{alwayssingle}
%    \renewcommand{\footnotesize}{\small}
%    \renewcommand{\footnoterule}{\relax}
%    \thispagestyle{empty}
%
%    \thisfancypage{%đóng khung trang này
%    \setlength{\fboxsep}{0pt} % 8pt là độ dày của đường viền
%    \setlength{\fboxrule}{2pt}
%    \doublebox}{} % phần nội dung sau là tương tự như đã làm
%    
%%  \null\vfill
%    \begin{center}
%        \vspace*{1ex}
%        {{\@university} \par}
%        {\textbf {\@collegeordept} \par}
%	    \vspace*{50mm}
%	    {\fontsize{24pt}{24pt}\selectfont \bfseries {\submittedtext} \par}
%	    \vspace*{15mm}
%	    {{\@title} \par}
%	    %{\vspace*{10mm} {{\@crest}\par}\vspace*{10mm}}
%        \vspace*{15mm}
%        \begin{flushleft}
%            \hspace*{6cm}Sinh viên thực hiện: {{\@author} \par}
%            \hspace*{6cm}Khóa: {{\@grade} \par}
%            \hspace*{6cm}Chuyên ngành: {{\@major} \par}
%	        \hspace*{6cm}Người hướng dẫn: {{\@supervisor} \par} 
%        \end{flushleft}
%        \vspace*{50mm}
%	    {\bfseries {\@degreedate}}
%	    \vspace*{1ex}
%    \end{center}
%%  \null\vfill
%\end{alwayssingle}}
%
%\renewcommand{\maketitle2}{%
%\pagenumbering{roman} % Sasa Tomic
%\setcounter{page}{0}  % Sasa Tomic
%\begin{alwayssingle}
%    \renewcommand{\footnotesize}{\small}
%    \renewcommand{\footnoterule}{\relax}
%    \thispagestyle{empty}
%
%    \thisfancypage{%đóng khung trang này
%    \setlength{\fboxsep}{0pt} % 8pt là độ dày của đường viền
%    \setlength{\fboxrule}{2pt}
%    \doublebox}{} % phần nội dung sau là tương tự như đã làm
%    
%%  \null\vfill
%    \begin{center}
%        \vspace*{1ex}
%        {{\@university} \par}
%        {\textbf {\@collegeordept} \par}
%	    \vspace*{50mm}
%	    {\fontsize{24pt}{24pt}\selectfont \bfseries {\submittedtext} \par}
%	    \vspace*{15mm}
%	    {{\@title} \par}
%	    %{\vspace*{10mm} {{\@crest}\par}\vspace*{10mm}}
%        \vspace*{15mm}
%        \begin{flushleft}
%            \hspace*{6cm}Sinh viên thực hiện: {{\@author} \par}
%            \hspace*{6cm}Khóa: {{\@grade} \par}
%            \hspace*{6cm}Chuyên ngành: {{\@major} \par}
%	        \hspace*{6cm}Người hướng dẫn: {{\@supervisor} \par} 
%        \end{flushleft}
%        \vspace*{50mm}
%	    {\bfseries {\@degreedate}}
%	    \vspace*{1ex}
%    \end{center}
%%  \null\vfill
%\end{alwayssingle}}

% define title page layout - template kma 02
\providecommand{\makecover}{\maketitle}%
\renewcommand{\makecover}{%
\pagenumbering{roman} % Sasa Tomic
\setcounter{page}{0}  % Sasa Tomic
\begin{alwayssingle}
    \renewcommand{\footnotesize}{\small}
    \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}

    \thisfancypage{%đóng khung trang này
    \setlength{\fboxsep}{0pt} % 8pt là độ dày của đường viền
    \setlength{\fboxrule}{1.5pt}
    \doublebox}{} % phần nội dung sau là tương tự như đã làm
% \null\vfill
    \begin{center}
        \topskip = 0pt  %\offinterlineskip 
        \footskip = 0pt
        \vspace*{0.5mm}
        {{\@university} \par}
        {\textbf {\@collegeordept} \par}
	    {\vspace*{12mm} {{\@crest}\par}\vspace*{20mm}}
	    {{\submittedtext} \par}
	    \vspace*{5mm}
	    {\fontsize{15pt}{15pt}\selectfont \bfseries {\@title} \par}
        \vspace*{20mm}
        \begin{flushleft}
            \hspace*{7.5cm}Ngành: {{\@major} \par}
            \hspace*{7.5cm}Chuyên ngành: {{\@submajor} \par}
            \hspace*{7.5cm}Mã số: {{\@majorcode} \par}
        \end{flushleft}
        \vspace*{75mm}
	    {\bfseries {\@degreedate}}
	    \vspace*{0.5mm}
    \end{center}
% \null\vfill
\end{alwayssingle}}

\providecommand{\makebackcover}{\maketitle}%
\renewcommand{\makebackcover}{%
\pagenumbering{roman} % Sasa Tomic
\setcounter{page}{0}  % Sasa Tomic
\begin{alwayssingle}
    \renewcommand{\footnotesize}{\small}
    \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}

    \thisfancypage{%đóng khung trang này
    \setlength{\fboxsep}{0pt} % 8pt là độ dày của đường viền
    \setlength{\fboxrule}{1.5pt}
    \doublebox}{} % phần nội dung sau là tương tự như đã làm
% \null\vfill
    \begin{center}
        \topskip=0pt  %\offinterlineskip 
        \footskip=0pt
        \vspace*{0.5mm}
        {{\@university} \par}
        {\textbf {\@collegeordept} \par}
	    {\vspace*{10mm} {{\@crest}\par}\vspace*{10mm}}
	    {{\submittedtext} \par}
	    \vspace*{5mm}
	    {\fontsize{15pt}{15pt}\selectfont \bfseries {\@title} \par}
        \vspace*{15mm}
        \begin{flushleft}
            \hspace*{7.5cm}Ngành: {{\@major} \par}
            \hspace*{7.5cm}Chuyên ngành: {{\@submajor} \par}
            \hspace*{7.5cm}Mã số: {{\@majorcode} \par}
            \vspace*{15mm}
            \hspace*{1.5cm}{\textit{Sinh viên thực hiện: } \par}
            \hspace*{1.5cm}{\qquad \textbf{\@author} \par}
            \hspace*{1.5cm}{\qquad {Lớp: {\@class} \par} \par}
            \hspace*{1.5cm}{\textit{Người hướng dẫn: } \par}
            \hspace*{1.5cm}{\qquad \textbf{\@supervisor} \par}
            \hspace*{1.5cm}{\qquad {\@supervisororg} \par}
            \hspace*{1.5cm}{\qquad {\@supervisororgext} \par}
        \end{flushleft}
        \vspace*{23mm}
	    {\bfseries {\@degreedate}}
	    \vspace*{0.5mm}
    \end{center}
% \null\vfill
\end{alwayssingle}}


% DEDICATION
%
% The dedication environment makes sure the dedication gets its
% own page and is set out in verse format.

\newenvironment{dedication}
{\begin{alwayssingle}
  \pagestyle{empty}
  \begin{center}
    \vspace*{1.5cm}
    {\LARGE }
  \end{center}
  \vspace{0.5cm}
  \begin{quote}
    \begin{center}}
    {\end{center} 
  \end{quote} 
\end{alwayssingle}}


% ACKNOWLEDGEMENTS
%
% The acknowledgements environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgements
% themselves appear in a quote environment, i.e. tabbed in at both sides, and
% on its own page.

\newenvironment{acknowledgements}
{\pagestyle{empty}
\begin{alwayssingle}
  \begin{center}
    \vspace*{1.5cm}
    {\large \bfseries LỜI CẢM ƠN}
  \end{center}
  \vspace{0.5cm}
  \begin{quotation}}
  {\end{quotation}
\end{alwayssingle}}

% The acknowledgementslong environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgement itself 
% does not appears in a quote environment so you can get more in.

\newenvironment{acknowledgementslong}
{\pagestyle{empty}
\begin{alwayssingle}
  \begin{center}
    \vspace*{1.5cm}
    {\large \bfseries LỜI CẢM ƠN}
  \end{center}
  \vspace{0.5cm}
  \begin{quotation}}
  {\end{quotation}
\end{alwayssingle}}


% COMMITMENTS
%

\newenvironment{commitments}
{\pagestyle{empty}
\begin{alwayssingle}
  \begin{center}
    \vspace*{1.5cm}
    {\large \bfseries LỜI CAM ĐOAN}
  \end{center}
  \vspace{0.5cm}
  \begin{quotation}}
  {\end{quotation}
\end{alwayssingle}}

%ABSTRACT
%
%The abstract environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself appears in a quote environment,
%i.e. tabbed in at both sides, and on its own page.

\newenvironment{abstracts}
{\begin{alwayssingle}
  \pagestyle{empty}
  \begin{center}
    \vspace*{1.5cm}
    {\large \bfseries TÓM TẮT}
  \end{center}
  \vspace{0.5cm}
  \begin{quote}}
  {\end{quote}
\end{alwayssingle}}

%The abstractlong environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself does not appears in a quote
%environment so you can get more in.

\newenvironment{abstractslong}
{\begin{alwayssingle}
  \pagestyle{empty}
  \begin{center}
    \vspace*{1.5cm}
    {\Large \bfseries TÓM TẮT}
  \end{center}
  \vspace{0.5cm}
  \begin{quote}}
  {\end{quote}
\end{alwayssingle}}

%The abstractseparate environment is for running of a page with the abstract
%on including title and author etc as required to be handed in separately

\newenvironment{abstractseparate}
{\begin{alwayssingle}
  \pagestyle{empty}
  \vspace*{-1in}
  \begin{center}
    { \Large {\bfseries {\@title}} \par}
    {{\large \vspace*{1ex} \@author} \par}
    {\large \vspace*{1ex}
    {{\@collegeordept} \par}
    {{\@university} \par}
    \vspace*{1ex}
    {{\it \submittedtext} \par}
    {\it {\@degree} \par}
    \vspace*{2ex}
    {\@degreedate}}
  \end{center}}
{\end{alwayssingle}}

%ROMANPAGES
%
% The romanpages environment set the page numbering to lowercase roman one
% for the contents and figures lists. It also resets
% page-numbering for the remainder of the dissertation (arabic, starting at 1).

\newenvironment{romanpages}
{\setcounter{page}{1}
  \renewcommand{\thepage}{\roman{page}}}
{\newpage\renewcommand{\thepage}{\arabic{page}}}
%{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}

