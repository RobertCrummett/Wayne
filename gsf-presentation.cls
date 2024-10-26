%% Growing Stone Fellowship Presentation Package
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cgem-presentation}[2024/10/26 Growing Stone Fellowship Presentations]

%----------------------------------------
%% CGEM Presentation Package Dependencies
\LoadClass[aspectratio=169]{beamer}

% Preamble
\RequirePackage{polyglossia}
\RequirePackage[backend=biber, style=authoryear-comp]{biblatex}
\RequirePackage[utf8]{inputenc}
\RequirePackage{hyperref}
\RequirePackage[absolute,overlay]{textpos}
\RequirePackage{xcolor}

%-----------------------------------------
%% Global TeX Settings and Options Processing

% Presentation color options
\definecolor{highlight}{HTML}{FFC000} % Highlight color
\definecolor{cgemblue}{HTML}{90C5FB} % Light CGEM blue
\definecolor{pres-blue}{HTML}{496EAF} % Darkish blue
\definecolor{pres-red}{HTML}{BD3939} % Beautiful red

% Parse the optional color argument
\DeclareOption{dark}{
	\colorlet{ZeroColor}{black}
	\colorlet{FirstColor}{white}
	\colorlet{SecondColor}{cgemblue}
	\colorlet{ThirdColor}{cgemblue!40!red}
}
\DeclareOption{light}{
	\colorlet{ZeroColor}{white}
	\colorlet{FirstColor}{black}
	\colorlet{SecondColor}{pres-blue}
	\colorlet{ThirdColor}{pres-red}
}
\ProcessOptions\relax

% Font settings
\usefonttheme{professionalfonts}
\setmainlanguage{english}
\setotherlanguage{hebrew}

\newfontfamily{\englishfont}{Latin Modern Roman}
\newfontfamily{\hebrewfont}[Script=Hebrew]{Hadasim CLM}
\newfontfamily{\hebrewfontsf}[Script=Hebrew]{Miriam CLM}
\newfontfamily{\hebrewfonttt}[Script=Hebrew]{Miriam Mono CLM}

% Hyperlink settings
\hypersetup{
	colorlinks=true,
	citecolor=ThirdColor,
	linkcolor=SecondColor,
	urlcolor=ThirdColor,
} % Link to corresponding author

% Background and default text color
\setbeamercolor{background canvas}{bg = ZeroColor}
\setbeamercolor{normal text}{fg = FirstColor}\usebeamercolor*{normal text}

% Turn off Beamer navigation buttons
\beamertemplatenavigationsymbolsempty

% Page numbering
\setbeamertemplate{footline}{
	\begin{flushright}
		\textcolor{SecondColor}{\large \insertframenumber}
		\hspace{1mm}
		\vspace{-1mm}
	\end{flushright}
}

%------------------------------------------
%% Enumeration / Itemize  / List Settings, ie, Bullet Point Lists

% Base level
\setbeamertemplate{itemize item}{\LARGE \color{FirstColor} \textbullet}
\setbeamertemplate{enumerate item}{\LARGE \color{FirstColor} \textbullet}
\setbeamerfont*{itemize/enumerate body}{size=\LARGE}
\setbeamercolor{itemize/enumerate body}{fg=FirstColor}

% First Level
\setbeamertemplate{itemize subitem}{\Large \color{FirstColor} --}
\setbeamertemplate{enumerate subitem}{\Large \color{FirstColor} --}
\setbeamerfont*{itemize/enumerate subbody}{size=\Large}
\setbeamercolor{itemize/enumerate subbody}{fg=FirstColor}

% Second Level -- only use in emergencies!!
\setbeamertemplate{itemize subsubitem}{\large \color{FirstColor} \textbullet}
\setbeamertemplate{enumerate subsubitem}{\large \color{FirstColor} \textbullet}
\setbeamerfont*{itemize/enumerate subsubbody}{size=\large}
\setbeamercolor{itemize/enumerate subsubbody}{fg=FirstColor}

%------------------------------------------
%% Frame title format

% Frame titles centers, Huge and white by default
\setbeamertemplate{frametitle}[default][center]
\setbeamerfont*{frametitle}{size=\Huge}
\setbeamercolor{frametitle}{fg=FirstColor}

%------------------------------------------
%% Question Slide

% Print a horizontal while bar across the text width of frame
\newcommand{\HorizontalBar}[1]{ \textcolor{#1}{\noindent \makebox[\linewidth]{\rule{\textwidth}{0.7pt}}} }

%-------------------------------------------
%% Bibliography Style

% Biblography colors
\setbeamercolor*{bibliography entry title}{fg=FirstColor}
\setbeamercolor*{bibliography entry location}{fg=FirstColor}
\setbeamercolor*{bibliography entry note}{fg=FirstColor}
\setbeamercolor*{bibliography entry author}{fg=FirstColor}
\setbeamercolor*{bibliography item}{fg=SecondColor}

% No numbering on continued reference slides
\setbeamertemplate{frametitle continuation}{}

%--------------------------------------------
%% Citations

% Inline citation settings
\renewcommand*{\citesetup}{
	\color{ThirdColor}
	\biburlsetup
}
