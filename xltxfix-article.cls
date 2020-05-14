\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{xltxfix-article}[2018/04/30 XeLaTeX Fixes Article class]

%Options
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
	family=xltxfix,
	prefix=xltxfix@
}
%Default media size for Article is A4 paper
\DeclareStringOption[595.28bp]{MediaW}
\DeclareStringOption[841.89bp]{MediaH}
\DeclareStringOption[12pt]{FontSize}
\DeclareStringOption[30mm]{Internal}
\DeclareStringOption[10mm]{External}
\DeclareStringOption[20mm]{Top}
\DeclareStringOption[20mm]{Bottom}
\DeclareBoolOption[true]{IndentFirst}
\DeclareBoolOption[false]{Head}
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

\endinput
