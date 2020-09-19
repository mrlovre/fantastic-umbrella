\version "2.19.0"
%\include "openlilylib"
\language "deutsch"

%\useLibrary Stylesheets
%\useNotationFont Improviso
%\displayNotationFonts

\header {
  title = "Tomba! 2 - Coal-Mining Town"
  composer = "Ashif Hakik"
  copyright = "Dokona Posla 2020."
  tagline = ""
}

#(set-global-staff-size 18)


\paper {
  #(set-paper-size "a4")
  indent = #0
  %system-count = 5
  top-margin = 15
  bottom-margin = 15
  left-margin = 15
  right-margin = 15
  
  ragged-last-bottom = ##f
  
  %annotate-spacing = ##t

}

global = {
  \key c \minor
  \time 4/4
}

\parallelMusic #'(right left) {
  <c g' c>4-> r <es a es'>-> r <a, e' a>-> r <b fis' b>-> r <c g' c>-> r <es a es'>-> r <fis, b fis'>-> r <g es' g>-> r |
  << {c8-. c-.-> es-. es-.-> fis-. fis-.-> g-. g-.-> c,-. c-.-> es-. es-.-> fis-. fis-.-> d-. d-.-> 
      c-. c-.-> es-. es-.-> fis-. fis-.-> g-. g-.-> c,-. c-.-> d-. d-.-> es-. es-.-> fis-. fis-.->} \\
     {c,4-- es-- fis-- g-- c,-- es-- fis-- d-- c-- es-- fis-- g-- c,-- d-- es-- fis-- } >> | 
  
  \bar ".|:"
  << {<c g' c>4_\markup{"simile"} s <es a es'> s <e a> s <es fis b> s} \\ {c8 g'16 fis f8 es~8 d4 es8 c g'16 fis f8 es es es f fis} >>
  << {<c g' c>4 s <es a es'> s <b fis'> s <es g> s} \\ {c8 g'16 fis f8 es~8 d4 es8 c g'16 fis f8 es d f es g} >> |
  << {c'8 c es es fis fis g g c, c es es fis fis d d c c es es fis fis g g c, c d d es es fis fis} \\
     {c,4 es fis g c, es fis d c es fis g c, d es fis } >> |
  \bar ":|."
  
  <c, g' c >8 <g' g'> <fis fis'> r <f a es' f> <es es'> <d d'> <es es'> <c e a c > <g' g'> <fis fis'> r <fis b fis'> <g g'> <d d'> <es es'>
  <c g' c >8 <g' g'> <fis fis'> r <f a es' f> <es es'> <d d'> <es es'> <c e a c > <g' g'> <fis fis'> <f f'> <es g b es> <d d'> <es es'> <f f'> |
  << {c'8 c es es fis fis g g c, c es es fis fis d d c c es es fis fis g g c, c d d es es fis fis} \\
     {c,4 es fis g c, es fis d c es fis g c, d es fis } >> | 
  
  <c g' c>8 <g' g'>16 fis <f fis'>8 es16 r <f a es' f>8 <d es'> <d d'> <es es'>
  <c e a c> <g' g'>16 fis <f fis'>8 es16 r <fis b es fis>8 <g g'> <d f d'> <es fis es'>
  <c g' c>8 <g' g'>16 fis <f fis'>8 es16 r <f a es' f>8 <d es'> <d d'> <es es'>
  <c e a c> <g' g'>16 fis <f fis'>8 <es f'> <es g d' es> <d d'> <h g' h> <d d'> |
  << {c'8 c es es fis fis g g c, c es es fis fis d d c c es es fis fis g g c, c d d es es fis fis} \\
     {c,4 es fis g c, es fis d c es fis g c, d es fis } >> |
  
  <c c'>8 r r4 r2 |
  <c c'>8 r r4 r2 |
  \bar "|."
  
  
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } { \global \relative c' \right }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \global \clef bass \relative c \left }
  >>
  \layout {
    \context {
      \Staff {
        \accidentalStyle piano
      }
    }
  }
  \midi {
    \tempo 4=114
  }
}

  
