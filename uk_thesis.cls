\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uk_thesis}[University of Kentucky thesis document class]
\LoadClass[
  oneside,
  12pt,
  toc=listof,
  open=any,
  bibliography=totoc
]{scrbook}

% ~~~ PACKAGES NECESSARY ~~~
\RequirePackage[
  letterpaper,
  lmargin={1.5in},
  rmargin={1in},
  tmargin={1in},
  bmargin={1in},
  footskip={0.5in}
]{geometry} % set page margins
\RequirePackage{anyfontsize} % fixes some weirdness with choosing font size
\RequirePackage[absolute, overlay]{textpos} % for placing text at absolute locations with textbox* environment
\RequirePackage{etoolbox} % Tools for working with LaTeX macros (see ifdefempty)
\RequirePackage{ulem}
\RequirePackage{scrlayer-scrpage} % For configuring headers and footers
\RequirePackage{bookmark} % to add bookmarks to the PDF output, university requirement

% ~~~ TO BE DEFINED BY GRADUATE STUDENT ~~~

\newcommand{\tablecaptionpadding}{\vspace*{3mm}} % Can be redefined to taste. Spacing under a caption and before a tabular in table environment.

\newcommand{\director}[2]{\newcommand{\@director}{#1}\newcommand{\@directordiscipline}{#2}}

\newcommand{\dgs}[1]{\newcommand{\@dgs}{#1}}

\newcommand{\@codirector}{}
\newcommand{\@codirectordiscipline}{}
\newcommand{\codirector}[2]{\renewcommand{\@codirector}{#1}\renewcommand{\@codirectordiscipline}{#2}}

\newcommand{\alignedcodirector}{\newcommand{\@alignedcodirector}}

\newcommand{\degree}[1]{\newcommand{\@degree}{#1}}
\newcommand{\college}[1]{\newcommand{\@college}{#1}}

\newcommand{\@orcid}{}
\newcommand{\orcid}[1]{\renewcommand{\@orcid}{#1}}

\newcommand{\abstract}[1]{\newcommand{\@abstract}{#1}}
\newcommand{\keywords}[1]{\renewcommand{\@keywords}{#1}}
\newcommand{\@keywords}{}

\newcommand{\acknowledgements}[1]{\renewcommand{\@acknowledgements}{#1}}
\newcommand{\@acknowledgements}{}

\newcommand{\submissiondate}[3]{
  \newcommand{\@submissionyear}{#1}
  \newcommand{\@submissionmonth}{#2}
  \newcommand{\@submissionday}{#3}
}

% ~~~ OTHER DEFINITIONS ~~~

\renewcommand{\mainmatter}{ % redefined in order to prevent blank page before start of main matter
  \clearpage\@mainmattertrue\pagenumbering{arabic}
}

\renewcommand{\backmatter}{ % redefined in order to prevent blank page before start of back matter
  \@mainmatterfalse
}

% \renewcommand*{\tableformat}{\tablename~\thetable\autodot}

\renewcommand{\familydefault}{\rmdefault} % set default font to be serif family
\newcommand{\@standardformat}{\rmfamily\normalsize\normalfont}
\newcommand{\@copyrightline}{Copyright \copyright{\@author{} \@submissionyear}}

\DeclareTOCStyleEntry[]{dottedtocline}{chapter} % dots are required between chapter headings and page numbers in TOC (KOMA Script option)

\newcommand{\@signaturewidth}{3.0in} % use dimen? probably more kosher but less readable
\newcommand{\@signatureblank}[1]{\rule{\@signaturewidth}{0.15mm}\\#1\vspace*{5mm}} % Provides a blank labeled #1
\newcommand{\@signature}[2]{\uline{\ \hfill{}#2\hfill{}\ }\\#1\vspace*{5mm}} % Provides a blank labeled #1 with #2 filled in. Expands to fill its container.

\newcommand{\@titlepagerulewidth}{3.0in} % use dimen? probably more kosher but less readable
\newcommand{\@titlepagerule}[1]{\rule{\@titlepagerulewidth}{0.15mm}\\#1\vspace*{2mm}}


\newcommand{\@titlepage}{
  \pdfbookmark[0]{Title page}{title_page}
  \vspace*{0mm}
  \begin{textblock*}{\textwidth}(1.5in, 2.5in)
  \begin{center}
    \MakeUppercase{\@title}
  \end{center}
  \end{textblock*}
  \begin{textblock*}{\textwidth}(1.5in, 4in)
    \begin{center}
      \@titlepagerule{THESIS}\\
      \@titlepagerule{} % TODO: figure out the spacing on this.
      A thesis submitted in partial fulfillment of the\\
      requirements for the degree of \@degree{}\\
      in the College of \@college\\
      at the University of Kentucky\\
      \bigskip
      \doublespacing
      By\\\@author\\
      Lexington, Kentucky\\
      \ifdefempty{\@codirector}{
        Director: Dr. \@director, Professor of \@directordiscipline\\
      }{
        \ifdef{\@alignedcodirector}{
          \begin{tabular}{lll}
          Co-Directors:& Dr. \@director,&Professor of \@directordiscipline\\
          and& Dr. \@codirector,&Professor of \@codirectordiscipline
          \end{tabular}
        }
        {
          Co-Directors: Dr. \@director, Professor of \@directordiscipline\\
          and Dr. \@codirector, Professor of \@codirectordiscipline\\
        }
      }
      Lexington, Kentucky\\
      \@submissionyear\\
      \singlespacing
    \end{center}
  \end{textblock*}
  % copyright should appear 2.5 inches above the bottom of the page
  \begin{textblock*}{\textwidth}(1.5in, \paperheight - 2.5in)
    \begin{center}
      \@copyrightline
      \ifdefempty{\@orcid}{}{ % if an ORCID is provided, include it here
        \\\url{\@orcid}
      }
    \end{center}
  \end{textblock*}
  \pagebreak

}

\newcommand{\@abstractpage} {
  \pdfbookmark[0]{Abstract}{abstract}
  \vspace*{0mm}
  \thispagestyle{plain}
  \begin{textblock*}{\textwidth}(1.5in, 2.5in)
  \begin{center}
    ABSTRACT OF THESIS
  \end{center}
  \end{textblock*}
  \begin{textblock*}{\textwidth}(1.5in, 3.5in)
  \begin{center}
    \MakeUppercase{\@title}
  \end{center}
  \end{textblock*}
  \begin{textblock*}{\textwidth}(1.5in, 4.5in)
    \@abstract\\
    \ifdefempty{\@keywords}{}{
      \vspace*{1mm}\\
      KEYWORDS: \@keywords
    }
  \end{textblock*}
  \begin{textblock*}{\@signaturewidth}(\paperwidth - \@signaturewidth - 1in,8in)
    \centering
    \noindent\@signature{}{\@author}
    \noindent\@signature{Date}{\@submissionmonth/\@submissionday/\@submissionyear} \\
  \end{textblock*}
  \pagebreak
}


\newcommand{\@approvalpage}{
  \vspace*{0mm}
  \begin{textblock*}{\textwidth}(1.5in, 2.5in)
  \begin{center}
    \MakeUppercase{\@title}
  \end{center}
  \end{textblock*}
  \begin{textblock*}{\textwidth}(1.5in, 4in)
  \begin{center}
      By\\\@author
  \end{center}
  \end{textblock*}
  \begin{textblock*}{\@signaturewidth}(\paperwidth - \@signaturewidth - 1in,7in)
    \centering
    \ifdefempty{\@codirector}{
      \noindent\@signature{Director of Thesis}{\@director} \\
    }{
      \noindent\@signature{Co-Director of Thesis}{\@director} \\
      \noindent\@signature{Co-Director of Thesis}{\@codirector} \\
    }
    \noindent\@signature{Director of Graduate Studies}{\@dgs} \\
    \noindent\@signature{Date}{\@submissionmonth/\@submissionday/\@submissionyear} \\
  \end{textblock*}
  \pagebreak
}

\newcommand{\@dedicationpage}{
  \ifdefempty{\@dedication}{}{
    \topskip0pt
    \vspace*{\fill}
    \begin{center}
      DEDICATION\\
      \bigskip
      \@dedication
    \end{center}
    \vspace*{\fill}
    \pagebreak
  }
}

\newcommand{\acknowledgementspage}{
  \ifdefempty{\@acknowledgements}{}{
    \chapter{Acknowledgements}
    \@acknowledgements
  }
}


\renewcommand{\maketitle}{%
  % initial configs
  \renewcommand{\contentsname}{Table of Contents}
  \pagenumbering{gobble}
  % first page
  \@titlepage
  \@abstractpage
  \@approvalpage
  \@dedicationpage
  \pagenumbering{roman}
  \setcounter{page}{3}
  \acknowledgementspage
}

% ~~~ KOMA SCRIPT CONFIGURATIONS ~~~

% Remove chapter note from header
\chead*{}

% change each of the section headings to a serif, plain font
\setkomafont{chapter}{\@standardformat\bfseries}
\setkomafont{section}{\@standardformat\bfseries}
\setkomafont{subsection}{\@standardformat\bfseries}
\setkomafont{subsubsection}{\@standardformat\bfseries\itshape}
\setkomafont{paragraph}{\@standardformat\itshape}

% Table of contents needs to be bookmarked
\AfterTOCHead[toc]{\pdfbookmark[0]{\contentsname}{toc}}

% Remove excessive spacing before and after headings.
\RedeclareSectionCommand[%runin=false,
  afterindent=false,
  beforeskip=0pt,
  afterskip=12pt
]{chapter}

\RedeclareSectionCommand[%runin=false,
  afterindent=false,
  beforeskip=0pt,
  afterskip=1pt
]{section}

\RedeclareSectionCommand[%runin=false,
  afterindent=false,
  beforeskip=0pt,
  afterskip=1pt
]{subsection}

\RedeclareSectionCommand[%runin=false,
  afterindent=false,
  beforeskip=0pt,
  afterskip=1pt
]{subsubsection}

\RedeclareSectionCommand[%runin=false,
  afterindent=false,
  beforeskip=0pt,
  afterskip=1pt
]{paragraph}

% define text of chapter heading. The negative hspace is a hack to remove the space that is mysteriously included in the chapter number field.
% Without hspace: "CHAPTER 2 . THE THING". With hspace: "CHAPTER 2. THE THING".
\renewcommand{\chapterlinesformat}[3]{
  \if@mainmatter{
    \center{\MakeUppercase{\ifstrempty{#2}{}{CHAPTER #2\hspace{-0.5em}.} #3}}
  }\else{
    \center{\MakeUppercase{#3}}
  }\fi
}

% make chapter TOC entries uppercase. Also prevent hyperref complaining about the MakeUppercase macro.
\renewcommand\addchaptertocentry[2]{%
  \addtocentrydefault{chapter}{#1}{\texorpdfstring{\MakeUppercase{#2}}{#2}}%
} 
