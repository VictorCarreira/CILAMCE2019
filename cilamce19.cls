%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% This is file cilmace19.cls'  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% Made by: Victor Carreira
%% Email: carreiravr@gmail.com
%%
%% This class has been tested with:
%%     MiKTeX version 2.9
%%
%% It is based on the standard LaTeX2e "article" class and some
%% standard packages:
%%    times    - for the font Times New Roman, 11pt
%%    mathptmx - for the font Times New Romen with math support
%%    fancyhdr - for defining headnote and footnote
%%    graphicx - for including logo
%%    natbib   - for referencing
%%
%% All packages should be availble in any normal distribution of LaTeX,
%% or can be downloaded from the CTAN homepage:
%%    www.ctan.org
%%
%% Changelog v1.0 -> v1.1
%% - Bibliography font to 11pt
%% - Reduce white space between lines (50 -> 55 lines per page)
%%
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{cilamce19}[2019/05/17 v1.1 CILAMCE Abstract Class]
%
% Pass all options directly to 'article'
%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
%%
%% prefered fontsize, papersize, and type
%%
\LoadClass[oneside,11pt,a4paper]{article}
%%
%% prefered fonts: Times New Roman becomes the standard font (text)
%%
\RequirePackage[T1]{fontenc}
\RequirePackage{times}
\RequirePackage{mathptmx}
\RequirePackage{lipsum}
\RequirePackage{graphics,graphicx}
\RequirePackage{geometry}
\RequirePackage[dvipsnames,svgnames,x11names]{xcolor}%put colors on headers and footers
\RequirePackage{amsfonts}
\RequirePackage{booktabs}
\RequirePackage{siunitx}
\RequirePackage{float}
\RequirePackage{xspace}
\RequirePackage{indentfirst}
\RequirePackage{multicol}
\RequirePackage{subfigure}
\RequirePackage{smartdiagram}
\RequirePackage{tikz}
\RequirePackage{amsmath}

\usetikzlibrary{calc,trees,positioning,arrows,chains,shapes.geometric,%
	decorations.pathreplacing,decorations.pathmorphing,shapes,%
	matrix,shapes.symbols}


\tikzset{
	>=stealth',
	punktchain/.style={
		rectangle, 
		rounded corners, 
		% fill=black!10,
		draw=black, very thick,
		text width=10em, 
		minimum height=3em, 
		text centered, 
		on chain},
	line/.style={draw, thick, <-},
	element/.style={
		tape,
		top color=white,
		bottom color=blue!50!black!60!,
		minimum width=8em,
		draw=blue!40!black!90, very thick,
		text width=10em, 
		minimum height=3.5em, 
		text centered, 
		on chain},
	every join/.style={->, thick,shorten >=1pt},
	decoration={brace},
	tuborg/.style={decorate},
	tubnode/.style={midway, right=2pt},
}

\tikzset{basic/.style={draw,fill=blue!50!green!20,
		text badly centered,minimum width=3em}}
\tikzset{input/.style={basic,circle}}
\tikzset{weights/.style={basic,rectangle,minimum width=2em}}
\tikzset{functions/.style={basic,circle,fill=blue!50!green!20}}
\newcommand{\addsymbol}{\draw[thick] (0.5em,0.5em) -- (0,0.5em) -- 
	(0,-0.5em) --  (-0.5em,-0.5em)
	(0em,0.75em) -- (0em,-0.75em)
	(0.75em,0em) -- (-0.75em,0em);}

\usetikzlibrary{positioning}

\tikzset{basic/.style={draw,fill=blue!20,text width=1em,text badly centered}}
\tikzset{input/.style={basic,circle}}
\tikzset{weights/.style={basic,rectangle}}
\tikzset{functions/.style={basic,circle,fill=blue!10}}

\linespread{0.92}
%%
%% Page size formats / 1in ~ 72pt, 1pt ~ 03515mm
%%
\setlength{\hoffset}{-1.0in}
\setlength{\oddsidemargin}{1.0in}
\setlength{\voffset}{-1.0in}
\setlength{\topmargin}{0.15in}
\setlength{\headheight}{0.55in}
\setlength{\headsep}{0.45in}
\setlength{\textheight}{9.7in}
\setlength{\paperheight}{11.7in}
\setlength{\textwidth}{6.27in}
\setlength{\paperwidth}{8.27in}
\setlength{\footskip}{0.51in}
\addtolength{\footskip}{-1.0\baselineskip}
%%
%% some others
%%
\setcounter{secnumdepth}{2} % numbering of sections and subsections
\setlength{\parindent}{22pt} % no indent for new paragraphs
\setlength{\parskip}{\baselineskip} % skip one line between paragraphs
\setlength{\partopsep}{0pt} % skip between environments and paragraphs
\setlength{\topsep}{0pt} % skip between environments and paragraphs
%%
%% bibliography
%%
\RequirePackage[square,numbers]{natbib} % special citing commands
\setlength{\bibsep}{0pt} % no lines between bibitems
\setlength{\bibhang}{1em} % indentation of second line in bibitem
\bibliographystyle{plainnat} % DO NOT MODIFY THIS UNLESS THE CONGRESS RULE CHANGES
%%
%% set header and footer
%%
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\pagestyle{fancy} % load package
\fancyhf{} % clear any existing styles

%%short title
\newcommand\@shorttitle{}
% define \theshorttitle to what is given
\newcommand{\shorttitle}[1]{\renewcommand\@shorttitle{#1}}

%%header

\fancyhead[L]{{\fontsize{10}{8}\selectfont{%
			%\vspace{-1pt}
			\textcolor{Gray}{\textit{\@shorttitle}}
}}}



\fancyfoot[R]{{\fontsize{10}{8}\selectfont{%
\vspace*{-1pt}
\textcolor{Gray}{\textit{CILMACE 2019}\\\vspace{0pt}
\textit{Proceedings of the XL Ibero-Latin-American Congress on Computational Methods in Engineering, ABMEC}\\\vspace{-3pt}
\textit{Natal/RN, Brazil, November 11-14, 2019.}}}}} % footnote
\renewcommand{\headrulewidth}{1.0pt} % add line in header
\renewcommand{\headrule}{\hbox to\headwidth{\color{LightGray}\leaders\hrule height \headrulewidth\hfill}}
\renewcommand{\footrulewidth}{1.0pt} % add line in footnote
\renewcommand{\footrule}{\hbox to\headwidth{\color{LightGray}\leaders\hrule height \headrulewidth\hfill}}

\pagenumbering{gobble} % define page numbering
%%
%% section headers and paragraphs
%%
\renewcommand{\section}{\@startsection{section}%
{1}% level
{1pt}% indent
{.1ex plus -.1ex}% beforeskip
{.1ex plus -.1ex}% afterskip
{\fontsize{13}{13}\selectfont\bf}} % font
%
\renewcommand{\subsection}{\@startsection{subsection}%
{2}% level
{1pt}% indent
{.1ex plus -.1ex}% beforeskip
{.1ex plus -.1ex}% afterskip
{\fontsize{11}{11}\selectfont\bf}} % font
%%
%% caption font
%%
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{{\bf\itshape #1} \itshape #2}%
  \ifdim\wd\@tempboxa >\hsize
    {{\bf\itshape #1} \itshape #2\par}
  \else
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
% EOF

%Defining personal tex symbols
\newcommand{\latex}{\LaTeX\xspace}
\newcommand{\tex}{\TeX\xspace}



