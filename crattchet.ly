\version "2.12.0"

\header {
    title = "Dr. Cratchet's Ratchet"
    pagenumber = "no"
}

melody = \relative c''' {
  \time 4/4
  \key a \minor

  \repeat volta 4 {
    r4 a g2
    g4. f8~ f2
    r8 d c a c4 d
    d8 c a a r g r a
  } % repeat

  \break

  r1
  r1
  r1
  r2 r8 g' a a \break
  r2 r8 g e g
  r2 r8 a c c
  d4 c gis8 a gis g
  fis dis d e g4 a8 a \break
  r2 r8 g e g
  r2 r8 g a a~
  a4 g8 e dis e dis e
  d c a a r c d e~ \bar "||" \break
  e4 d8 c d4 c8 a
  c a g a r e' r e~
  e4 d8 c d4 c8 a
  c a g a r g a4 \break % fall here
  r1
  r1
  r1
  r1 \break
  e'4 d8 c d4 c8 a
  c a g a r e' r es~
  es4 d8 c d4 c8 a
  c a g a r gis r a \break

} % notes

harmony = \chords {
  \set chordChanges = ##t

  a1:min7
  a4.:min7 g8:7 r2
  fis2:min7.5- f:maj7
  e4.:min7 a8:min7 r e:min7 r a:min7

  a2:min7 b:min7
  c:maj7 b:min7
  a:min7 b:min7
  c:maj7 b:min7

  a:min7 b:min7
  c:maj7 b:min7
  a:min7 b:min7
  c:maj7 b:min7
  a:min7 b:min7
  c:maj7 b:min7
  a:min7 b:min7
  a:min7 g:maj7
  fis1:min7.5-
  fis:min7.5-
  f:maj7
  f:maj7
  a2: min7 b:min7
  c:maj7 b:min7
  a:min7 b:min7
  a:min7 g:maj7
  fis1:min7.5-
  fis:min7.5-
  f:7
  e:7

} % chords

\include "footer.ly"
