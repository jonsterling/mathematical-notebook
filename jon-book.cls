\LoadClass[oneside,a4paper,11pt]{memoir}

\RequirePackage{minitoc}
\nomtcrule
\setlength{\mtcindent}{0pt}

\RequirePackage{url}
\RequirePackage{xparse}
\RequirePackage{microtype}
\RequirePackage{jmsdelim}
\RequirePackage{jon-tikz}
\RequirePackage{ebproof}
\RequirePackage{upgreek}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{stmaryrd}

\RequirePackage{zi4}
\RequirePackage[tt=false,oldstyle]{libertine}
\RequirePackage[frenchmath,libertine]{newtxmath}
\RequirePackage[hang,flushmargin]{footmisc}

\numberwithin{section}{chapter}

\pretitle{\begin{center}\huge\bfseries}
\posttitle{\par\end{center}\vskip 0.5em}
\predate{\begin{center}\large}
\postdate{\par\end{center}}

\RenewDocumentCommand\chapnamefont{}{\centering\huge\scshape\MakeLowercase}
\RenewDocumentCommand\chapnumfont{}{\centering\huge\scshape}
\RenewDocumentCommand\chaptitlefont{}{\centering\huge\bfseries}
\RenewDocumentCommand\printchaptertitle{m}{\chaptitlefont\MakeUppercase{#1}}

\setsecnumdepth{subsubsection}
\setsecnumformat{\csname jms#1\endcsname}
\NewDocumentCommand\jmssection{}{\S~\thesection.\ \ }
\NewDocumentCommand\jmssubsection{}{\thesubsection.\ \ }
\NewDocumentCommand\jmssubsubsection{}{\thesubsubsection.\ \ }
\setsecheadstyle{\centering\large\bfseries\MakeUppercase}
\setsubsecheadstyle{\noindent\normalfont\bfseries}

\setaftersubsecskip{.2\onelineskip}
\setaftersubsubsecskip{-1em}

\setlrmarginsandblock{1.55in}{*}{1}
\setulmarginsandblock{1.55in}{*}{1}
\setheaderspaces{*}{2\onelineskip}{*}
\checkandfixthelayout


\newif\ifmainmatter
\appto\mainmatter{\mainmattertrue}
\appto\backmatter{\mainmatterfalse}
\appto\appendix{\mainmatterfalse}

\RenewDocumentCommand\chaptermark{m}{%
  \markboth{%
    \scshape\MakeLowercase{%
      \ifmainmatter\chaptername~\oldstylenums\thechapter.~\fi#1
    }%
  }{}%
}%

\nouppercaseheads
\makeoddhead{headings}{%
  \ifmainmatter\S~\thesection\fi%
}{\leftmark}{\thepage}


\setlength\parindent{.4cm}


\usepackage{xcolor}

\definecolor{Matterhorn}{RGB}{77,77,77}
\definecolor{RegalBlue}{RGB}{3,69,117}
\definecolor{RedDevil}{RGB}{134,1,17}

\microtypesetup{
  activate={true,nocompatibility},
  final,
  tracking=false,
  kerning=true,
  spacing=true,
  factor=1100,
  stretch=10,
  shrink=10
}

\RequirePackage{hyperref}
\hypersetup{breaklinks=true,colorlinks=true,linkcolor=black,urlcolor=Matterhorn, citecolor=black}

\RequirePackage[backend=biber,natbib=true, doi=true, citestyle=alphabetic, backref=true, style=alphabetic, maxnames=1000, mincrossrefs=99]{biblatex}
\setcounter{biburlnumpenalty}{9000}
\setcounter{biburlucpenalty}{9000}
\setcounter{biburllcpenalty}{9000}

\RequirePackage{silence}
\WarningFilter{latex}{Marginpar on page}
\WarningFilter{latexfont}{Font shape}
\WarningFilter{latexfont}{Some font}
\WarningFilter*{amsthm}{The \@nx\qedhere command}

\RequirePackage[shortlabels]{enumitem}

\setlist{itemsep = 0pt}
\setlist[1]{labelindent=\parindent}
\setlist[enumerate,1]{label = \arabic*),ref = \arabic*}
\setlist[enumerate,2]{label = \emph{\alph*}),ref = \theenumi.\emph{\alph*}}
\setlist[enumerate,3]{label = \roman*),ref = \theenumii.\roman*}
\setlist[description]{%
  font={\normalfont\itshape\bfseries}
}




\RequirePackage{amsthm}
\RequirePackage{etoolbox}
\RequirePackage{pifont}
\RequirePackage[nameinlink,capitalize,noabbrev]{cleveref}


\theoremstyle{definition}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{principle}[theorem]{Principle}
\newtheorem{open-question}[theorem]{Open Question}
\newtheorem{construction}[theorem]{Construction}
\newtheorem{computation}[theorem]{Computation}
\newtheorem{convention}[theorem]{Convention}
\newtheorem{notation}[theorem]{Notation}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{slogan}[theorem]{Slogan}
\newtheorem{note}[theorem]{Note}
\newtheorem{example}[theorem]{Example}
\newtheorem{almost-example}[theorem]{Almost Example}
\newtheorem{exercise}[theorem]{Exercise}
\newtheorem{history}[theorem]{History}
\newtheorem{fact}[theorem]{Fact}
\newtheorem{observation}[theorem]{Observation}
\newtheorem{intuition}[theorem]{Intuition}


%\makeatletter
%\NewDocumentCommand\updatetheoremprefixfor{m}{%
%  \expandafter\expandafter\expandafter\let\expandafter\csname old#1\expandafter\endcsname\csname #1\endcsname
%  \@namedef{#1}{\RenewDocumentCommand\thetheorem{}{\csname the#1\endcsname.\arabic{theorem}}
%  \setcounter{theorem}{0}%
%  \csname old#1\endcsname}}
%\makeatother
%
%\updatetheoremprefixfor{chapter}
%\updatetheoremprefixfor{section}
%\updatetheoremprefixfor{subsection}
%\updatetheoremprefixfor{subsubsection}
%

\Crefname{slogan}{Slogan}{Slogans}
\Crefname{rule}{Rule}{Rules}
\Crefname{req}{Requirement}{Requirements}
\Crefname{principle}{Principle}{Principles}
\Crefname{open-question}{Open Question}{Open Questions}
\Crefname{diagram}{Diagram}{Diagrams}
\Crefname{structure}{Structure}{Structures}
\Crefname{intuition}{Intuition}{Intuitions}
\Crefname{reduction}{Reduction}{Reductions}
\allowdisplaybreaks%



\usepackage{pict2e}

\ExplSyntaxOn

\newlength\SquareSize
\setlength\SquareSize{1.2ex}
\newdimen\SquareThickness
\SquareThickness=.7pt

\cs_new_protected:Nn \__draw_bb_square:n {
  \group_begin:
  \setlength\unitlength{#1\SquareSize}
  \linethickness{#1\SquareThickness}
  \begin{picture}(1.1,1,1)
    \polygon(0,0)(0,1)(1,1) (1,0)(0,0)
    \Line(.8,0) (.8,1)
  \end{picture}
  \group_end:
}

\cs_new_protected:Nn \__draw_square:n {
  \group_begin:
  \setlength\unitlength{#1\SquareSize}
  \linethickness{#1\SquareThickness}
  \begin{picture}(1,1)
    \polygon(0,0)(0,1)(1,1) (1,0)(0,0)
  \end{picture}
  \group_end:
}

\NewDocumentCommand\SQUARE{}{
  \mathchoice
    {\__draw_square:n {1}}
    {\__draw_square:n {1}}
    {\__draw_square:n {0.75}}
    {\__draw_square:n {0.75}}
}
\NewDocumentCommand\CUBE{}{
  \mathchoice
    {\__draw_bb_square:n {1}}
    {\__draw_bb_square:n {1}}
    {\__draw_bb_square:n {0.75}}
    {\__draw_bb_square:n {0.75}}
}

\ExplSyntaxOff



\def\wasyfamily{\fontencoding{U}\fontfamily{wasy}\selectfont}
\NewDocumentCommand\PILL{}{%
  \raisebox{.2pt}{%
    \rotatebox[origin=c]{90}{%
      \leavevmode%
      \hbox to 0pt{\wasyfamily\char71\hss}%
      \hbox{\wasyfamily\char35}%
    }%
  }%
}

\NewDocumentCommand\vertsep{}{\mathrel{\delimsep{\vert}}}
\NewDocumentCommand\Ast{}{\textup{*}}
