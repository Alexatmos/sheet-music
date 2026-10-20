\version "2.24.1"
\language "english"

\paper {
  indent = 0\mm
  line-width = 180\mm
}

\header {
  title = "ВЕЧЕР В КРУИЗЕ"
}

chords = \chordmode {
  % ВСТ
  \mark \markup { \box "ВСТ" }
  d9 | c9 | bes9 | c9 | d9 | d7 d9 |
  
  % 1
  \mark \markup { \box "1" }
  g:m7 | a:m7 | f/d | d:7 | g:m7 | a:m7 | f/d | d:m7 |
  
  % 2
  \mark \markup { \box "2" }
  g:m7 | a:m7 | f/d | d:7 | g:m7 | a:7 | f/d | d:m7 |
  
  % 3
  \mark \markup { \box "3" }
  g/e | a:7 | f/d | bes9 | e:m7 | a:7 |
}

melody = \relative c' {
  \key g \minor
  \time 4/4
  
  % ВСТ
  s1*6 |
  
  % 1
  s1*8 |
  
  % 2
  s1*8 |
  
  % 3
  s1*5 |
  % заполнение восьмыми над последним A7
  \tuplet 4/4 { s8 s s s } | \bar "|."
}

\score {
  <<
    \new ChordNames \chords
    \new Staff \melody
  >>
  \layout { }
}