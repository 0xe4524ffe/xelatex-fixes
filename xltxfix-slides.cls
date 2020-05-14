\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{xltxfix-slides}[2018/04/30 XeLaTeX Fixes Presentation class]

%Options
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
	family=xltxfix,
	prefix=xltxfix@
}
%Default media size is 1920x1080px
\DeclareStringOption[1920bp]{MediaW}
\DeclareStringOption[1080bp]{MediaH}
\DeclareStringOption[32bp]{FontSize}
\DeclareStringOption[256bp]{Internal}
\DeclareStringOption[256bp]{External}
\DeclareStringOption[32bp]{Top}
\DeclareStringOption[32bp]{Bottom}
\DeclareBoolOption[true]{IndentFirst}
\DeclareBoolOption[true]{Head}
\DeclareBoolOption[false]{Draft}
\DeclareStringOption[5em]{ParIndent}

\ProcessKeyvalOptions*
\PassOptionsToPackage{%
	paper=\xltxfix@MediaW:\xltxfix@MediaH
}{typearea}
\LoadClass[%
	paper=\xltxfix@MediaW:\xltxfix@MediaH,
	paperwidth=\xltxfix@MediaW,
	paperheight=\xltxfix@MediaH,
	fontsize=\xltxfix@FontSize,
	parskip=false
]{scrartcl}
\KOMAoptions{fontsize=\xltxfix@FontSize}
\providecommand\chapterformat{\Chapterformat}
\voffset=\dimexpr 1in-\xltxfix@MediaH\relax
\hoffset=1in
\RequirePackage{xltxfix}
\linespread{1.25}
\RequirePackage[%
	paperwidth=\xltxfix@MediaW,
	paperheight=\xltxfix@MediaH,
	left=\xltxfix@Internal,
	right=\xltxfix@External,
	top=\xltxfix@Top,
	bottom=\xltxfix@Bottom,
	nomarginpar,
\ifxltxfix@Head\else
	nohead,
\fi
	footskip={\xltxfix@Bottom*\real{0.5}+1ex}
]{geometry}
\ifxltxfix@IndentFirst
	\RequirePackage{indentfirst}
\fi
\setlength{\parindent}{\xltxfix@ParIndent}

\everymath{\displaystyle}

\ifxltxfix@Draft
	\draft
\fi

\Prop{AuthorTitle}{Unknown}
\Prop{City}{Unknown}
\Prop{Address}{Unknown}
\Prop{Year}{Unknown}

\@Offset{0bp}{\xltxfix@MediaH}

\def\MediaW{\xltxfix@MediaW}
\def\MediaH{\xltxfix@MediaH}
\def\IMargW{\xltxfix@Internal}
\def\EMargW{\xltxfix@External}
\def\TopH{\xltxfix@Top}
\def\BottomH{\xltxfix@Bottom}

\endinput
