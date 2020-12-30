\version "2.19.0"
\language "deutsch"
\include "utility.ly"

\header {
  title = \markup{\fontsize #4 "Kujara Ranch"}
  copyright = "Dokona Posla 2020."
  tagline = ""
}

#(set-global-staff-size 18)


\paper {
  #(set-paper-size "a4")
  indent = #0
  top-margin = 10
  bottom-margin = 10
    
  system-system-spacing = #'((basic-distance . 13.6) (padding . 3.2))
  top-markup-spacing = #'((minimum-distance . 6.4))
  markup-system-spacing = #'((minimum-distance . 13.6))
  last-bottom-spacing = #'((minimum-distance . 13.6))
    
  ragged-last-bottom = ##f
  
  %annotate-spacing = ##t
}

global = {
  \key a \major
  \time 4/4
  \tempo 4 = 114
}

\parallelMusic #'(right left) {
  \small d4^\markup{\italic "ad lib."} r d r d r d r \normalsize |
  \small R1 R1 \normalsize |
  
  d8-.\( r e-. a-. gis-. r a-. r
  d,-. r e-. a-. gis-. r a-. fis-.
  r gis-.\) r4 r r
  fis8-.\( r gis-. e-.\) r4 r |
  a8-. d-. e-. a,-. e'-. fis-. a,-. d-. 
  e-. a,-. e'-. fis-. e-. d-. gis,-. gis-. 
  d'-. e-. gis,-. d'-. e-. gis,-. d'-. e-. 
  <gis, cis>-. d'-. e-. <h d>-. <gis h>-. e'-. fis-. <a, d>-. |
  
  d8\(^\markup{\italic "staccato simile"} r e a gis r a r
  d, r e a gis r a h
  r fis gis8\) r8 r4 r
  h8\( r a r gis\) r r4 |
  a8 d e a, e' fis a, d 
  e a, e' fis e d gis, gis 
  d' e gis, d' e gis, d' e 
  <gis, cis> d' e <h d> <gis h> e' fis <a, d> |
  
  \ottava #1 a''8 h gis a fis gis e fis 
  d e cis d \ottava #0 h cis \su a[ h] \sn
  gis a fis gis e fis d e
  cis d h cis a h gis a |
  << {d8 s e a gis s a s
      d, s e a gis s \sss \stor \sd a \hss \stol \su fis
      s gis s4 s s
      fis8 s gis e s4 s} \\
     {a,8 d e a, e' fis a, d 
      e a, e' fis e d gis, gis 
      d' e gis, d' e gis, d' e 
      <gis, cis> d' e <h d> <gis h> e' fis <a, d>} >> |
  
  \ottava #1 a''8 h gis a fis gis e fis 
  d e cis d \ottava #0 h cis \su a[ h] \sn
  gis a fis gis e fis d e
  \su cis d h cis a h gis a \sn |
  << {d8 s e a gis s a s
      d, s e a gis s \sss \stor \sd a h \stol \su
      s fis \hss gis8 s8 s4 s
      \sss \stor \sd h8 s a s gis s \hss \stol \su s4} \\
     {a,8 d e a, e' fis a, d 
      e a, e' fis e d gis, gis 
      d' e gis, d' e gis, d' e 
      <gis, cis> d' e <h d> <gis h> e' \stor fis[ <a, d>] \stol} >> |
  
  d e fis e r d r e r fis r e r fis r fis
  gis fis e fis r gis r a r gis r fis r gis r a
  h a gis a r a r gis r a r h r cis r h
  cis h a h r cis r d r e r fis r h,~8 r |
  s1*8 |
  
  \ottava #1 a'8 h gis a fis gis e fis 
  d e cis d \ottava #0 h cis \su a[ h] \sn
  gis a fis gis e fis d e
  cis d h cis a h gis a |
  << {d8 s e a gis s a s
      d, s e a gis s \sss \stor \sd a \hss \stol \su fis
      s gis s4 s s
      fis8 s gis e s4 s} \\
     {a,8 d e a, e' fis a, d 
      e a, e' fis e d gis, gis 
      d' e gis, d' e gis, d' e 
      <gis, cis> d' e <h d> <gis h> e' fis <a, d>} >> |
  
  \ottava #1 a''8 h gis a fis gis e fis 
  d e cis d \ottava #0 h cis \su a[ h] \sn
  gis a fis gis e fis d e
  \su cis d h cis a h gis a \sn |
  << {d8 s e a gis s a s
      d, s e a gis s \sss \stor \sd a h \stol \su
      s fis \hss gis8 s8 s4 s
      \sss \stor \sd h8 s a s gis s \hss \stol \su s4} \\
     {a,8 d e a, e' fis a, d 
      e a, e' fis e d gis, gis 
      d' e gis, d' e gis, d' e 
      <gis, cis> d' e <h d> <gis h> e' \stor fis[ <a, d>] \stol} >> |
  
  s1 * 3 |
  s1 * 3 | \bar "|."
  
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } { \global \relative c' \right }
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \global \relative c' \left }
  >>
  \layout {
    \context {
      \Staff {
        \accidentalStyle piano
      }
    }
    \context {
      \PianoStaff \consists #Span_stem_engraver
    }
  }
  \midi {
    \tempo 4=114
  }
}

  
