%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% custom class
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{template}[My custom CV class]
\LoadClass[paper=a4,fontsize=11pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% packages
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% characters encoding, formatting rules, geometry, icon fonts, section fonts, graphics, high quality graphics, colors, math, url, icons, academic icons.

\usepackage[utf8x]{inputenc}
\usepackage[english]{babel}
\usepackage[margin=0.5in]{geometry}
\usepackage{kpfonts} 
\usepackage{sectsty}
\usepackage{fontspec}
\usepackage{graphicx}  
\usepackage{tikz}
\usepackage{color}
\usepackage{amsmath,amsfonts,amsthm} 
\usepackage{url}
\usepackage[colorlinks=true, urlcolor=bluviola]{hyperref}
\usepackage{fontawesome5}
\usepackage{academicons}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% colors
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\definecolor{malva}{RGB}{160, 113, 163}
\definecolor{glicine}{RGB}{148, 141, 234}
\definecolor{porpora}{RGB}{191, 0, 64}
\definecolor{bluviola}{RGB}{136, 176, 224}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% section style
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\frenchspacing    % Better looking spacings after periods
\pagestyle{empty} % No pagenumbers/headers/footers

\sectionfont{
% adjust section font
	\usefont{OT1}{phv}{b}{n}
% adjust section rule
	\sectionrule{0pt}{0pt}{14pt}{3pt}
    }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% macros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% spacing
\newcommand{\sepspace}{\vspace{0.5cm}\newline}
\newlength{\spacebox}
\settowidth{\spacebox}{8888888888}	

%%% colors
\newcommand{\IconsColorOne}{\color{malva}} % color of icons in key section
\newcommand{\IconsColorTwo}{\color{malva}} % colore of icons in work experience section
\newcommand{\titleColor}{\color{glicine}} %color of titles
\newcommand{\dateColor}{\color{bluviola}} % color of dates
\newcommand{\locationColor}{\color{bluviola}} % color of locations
\newcommand{\linkColor}{\color{bluviola}} %hyperlink color

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% new environments
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{entryList}
    {\begin{itemize}} % Code executed at the start
    {\end{itemize}}   % Code executed at the end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% new commands
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% header
\newcommand{\header}[3]{
    \begin{figure}[ht]
        \begin{minipage}{0.3\textwidth}
            \includegraphics[width=.7\linewidth]{#1} % Photo
        \end{minipage}
        \hspace{5cm}
        \begin{minipage}{0.65\textwidth}
            \textbf{\Huge #2} \\    % Name
            \textit{ #3}            % Slogan
        \end{minipage}
    \end{figure}

}

%%% sections definition
\newcommand{\NewPart}[1]{\section*{\uppercase{#1}}}

%%% key section

% Key entries with icons
\newcommand{\anagraphics}[1]{\item[\IconsColorOne\faUser] \textbf{Anagraphics:} #1}
\newcommand{\gender}[1]{\item[\IconsColorOne\faVenusMars] \textbf{Gender:} #1}
\newcommand{\phone}[1]{\item[\IconsColorOne\faPhone] \textbf{Phone:} #1}
\newcommand{\address}[1]{\item[\IconsColorOne\faMapPin] \textbf{Address:} #1}
\newcommand{\email}[1]{\item[\IconsColorOne\faEnvelope]\textbf{Email:} #1}
\newcommand{\github}[1]{\item[\IconsColorOne\faGithub]\textbf{GitHub:} #1}
\newcommand{\linkedin}[1]{\item[\IconsColorOne\faLinkedin]\textbf{LinkedIn:} #1}
\newcommand{\researchGate}[1]{\item[\IconsColorOne\aiResearchGate]\textbf{Research Gate:} #1}

% left minipage fill
\newcommand{\personalinfoblockLeft}[4]{%
  \begin{center}
    \begin{itemize}
      \anagraphics{#1}
      \gender{#2}
      \phone{#3}
      \address{#4}
    \end{itemize}
  \end{center}
}
% right minipage fill
\newcommand{\personalinfoblockRight}[4]{%
  \begin{center}
    \begin{itemize}
      \email{#1}
      \github{#2}
      \linkedin{#3}
      \researchGate{#4}
    \end{itemize}
  \end{center}
}

%%% skill section

\newcommand{\SkillsEntry}[2]{ 
    \noindent\hangindent=6em\hangafter=0 % Indentation
    \parbox{\spacebox}{        % Box to align text
    \textit{#1}}			   % Entry name (birth, address, etc.)
    \hspace{1.5em} #2 \par
        }    % Entry value

%%% work experience section

\newcommand{\workEntry}[5]{	
        \begin{minipage}[t]{0.2\linewidth}
            {\dateColor\fontsize{10pt}{10pt}#1} 
        \end{minipage}
        \begin{minipage}[t]{.8\linewidth} % Text aligns to the top
            {\titleColor\bfseries\uppercase{#2}}, 
            \hfill {\locationColor\fontsize{10pt}{12pt}\textit{#3}}
            {\newline\titleColor\textit{#4}}  
            \par   	
            \noindent\hangindent=2em\hangafter=0 \small #5 % Description
            \normalsize \par         
        \end{minipage}  
}
\newcommand{\workEntryDouble}[7]{	
        \begin{minipage}[t]{0.2\linewidth}
            {\dateColor\fontsize{10pt}{10pt}#1} 
        \end{minipage}
        \begin{minipage}[t]{.8\linewidth} % Text aligns to the top
            {\titleColor\bfseries\uppercase{#2}} 
            \hfill {\locationColor\fontsize{10pt}{12pt}\textit{#3}}
            {\newline\titleColor\textit{#4}}  
            \par   	
            \noindent\hangindent=2em\hangafter=0 \small #5 % Description
            \normalsize \par     
            {\newline\titleColor\textit{#6}}  
            \par   	
            \noindent\hangindent=2em\hangafter=0 \small #7 % Description
            \normalsize \par 
        \end{minipage}  
}

\newcommand{\workItem}[1]{\item[\scalebox{0.7}{\IconsColorTwo\faCogs}] #1}

%%% Education
\newcommand{\educationEntry}[5]{	
        \begin{minipage}[t]{0.2\linewidth}
            {\dateColor\fontsize{10pt}{10pt}#1} 
        \end{minipage}
        \begin{minipage}[t]{.8\linewidth} % Text aligns to the top
            {\titleColor\bfseries{#2}} 
            \hfill {\locationColor\fontsize{10pt}{12pt}\textit{#3}}
            {\newline\textit{#4}}  
            \par   	
            \noindent\hangindent=2em\hangafter=0 \small {\IconsColorTwo\faGraduationCap} #5 % Description
            \normalsize \par         
        \end{minipage}  
}

%%% Extracurricular activities
\newcommand{\extracurricularEntry}[4]{	
    \begin{center}
        \begin{minipage}{1.\linewidth} 
            {\IconsColorTwo\faChartLine} \hspace{0.5em} {\titleColor\bfseries#1} 
            \hfill {\locationColor\fontsize{10pt}{12pt}\textit{#2}} 
            \par   	
            \noindent\hangindent=2em\hangafter=0 \small \textbf{(#3)} #4 % Description
            \normalsize \par         
        \end{minipage}  
    \end{center}
}


%%% Awards
\newcommand{\awardsEntry}[4]{	
    \begin{center}
        \begin{minipage}{1.\linewidth} 
            {\IconsColorTwo\faTrophy} \hspace{0.5em} {\titleColor\bfseries#1} 
            \hfill {\locationColor\fontsize{10pt}{12pt}\textit{#2}}
            \par   	
            \noindent\hangindent=2em\hangafter=0 \small \textbf{(#3)} #4 % Description
            \normalsize \par         
        \end{minipage}  
    \end{center}
}


%%% Publications
\newcommand{\publicationsEntry}[4]{
    \begin{center}
        \begin{minipage}{1.\linewidth} 
            {\IconsColorOne\faPaperclip} \hspace{0.3em}
            (#1) \textbf{#2.} \newline
            \textbf{Title:} #3. 
            \textbf{DOI:} {\color{porpora}#4}
        \end{minipage}
    \end{center}
}
\newcommand{\publicationsEntryConference}[4]{
    \begin{center}
        \begin{minipage}{1.\linewidth} 
            {\IconsColorOne\faBullhorn} \hspace{0.3em}
            (#1) \textbf{#2.} \newline
            \textbf{Title:} #3. 
            {\color{porpora}#4}
        \end{minipage}
    \end{center}
}













	
		



