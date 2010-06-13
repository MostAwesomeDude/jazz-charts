\version "2.12.0"

\include "header.ly"

\header {
    title = "Delicious Marble Cake"
    pagenumber = "no"
}

melody = \relative c''' {
  \time 4/4
  \key a \major

  \repeat volta 2 {
    \times 2/3 { gis8 a gis } e cis~ cis4 \times 2/3 { dis8 e dis }
    cis a~ a4 \times 2/3 { gis'8 a gis } e cis
    dis b cis a b cis b a
    e'2 dis8 cis b a
    gis2~ gis8 gis4.
    fis1
    e2~ e8  e4.
    d1
  }

  fis4. g4. b4~
  b8 c4. fis,4. g8~
  g4 b4. c4.~
  c2 b
  c1
  c
  cis
  eis

  \repeat volta 2 {
    \times 2/3 { gis8 a gis } e cis~ cis4 \times 2/3 { dis8 e dis }
    cis a~ a4 \times 2/3 { gis'8 a gis } e cis
    dis b cis a b cis b a
    e'2 dis8 cis b a
    <g b>4. <f a>4. <a c>4~
    <a c>1
    \comp #8
  }

  e4. f4. a4~
  a8 bes4. e,4. f8~
  f4 a4. bes4.~
  bes1~
  bes
  b~
  b
}

harmony = \chords {
  \set chordChanges = ##t

  a1:maj7.11+
  a:maj7.11+
  a:maj7.11+
  a:maj7.11+
  d:maj7.11+
  d:maj7.11+
  d:maj7.11+
  d:maj7.11+

  c:maj7
  c:maj7
  a:min7
  a:min7
  b:7
  b:7
  cis:7
  cis:7

  fis:min7
  fis:min7
  fis:min7
  fis:min7
  f:maj7.11+
  f:maj7.11+
  f:maj7.11+
  f:maj7.11+

  bes:maj7
  bes:maj7
  g:min7
  g:min7
  es:maj7
  es:maj7
  e:7
  e:7
}

\include "footer.ly"
