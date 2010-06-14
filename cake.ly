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
    \times 2/3 { gis16 a gis } e cis~ cis8 \times 2/3 { dis16 e dis }
    cis a8. \times 2/3 { gis'16 a gis } e cis
    dis b cis a b cis b a
    e'4 dis16 cis b a
    gis4~ gis16 gis8. fis2
    e4~ e16 e8. d2
  }

  fis8. g8. b8. c8. fis,8. g16~
  g8 b8. c8.~ c4 b
  c1
  cis2 eis

  \repeat volta 2 {
    \times 2/3 { gis16 a gis } e cis~ cis8 \times 2/3 { dis16 e dis }
    cis a8. \times 2/3 { gis'16 a gis } e cis
    dis b cis a b cis b a
    e'4 dis16 cis b a
    <g b>8. <f a>8. <a c>8~ <a c>2
    \comp #4
  }

  e8. f8. a8. bes8. e,8. f16~
  f8 a8. bes8.~ bes2~
  bes1
  b
  \bar ".|."
}

harmony = \chords {
  \set chordChanges = ##t

  a1:maj7.11+
  a:maj7.11+
  d:maj7.11+
  d:maj7.11+

  c:maj7
  a:min7
  b:7
  cis:7

  fis:min7
  fis:min7
  f:maj7.11+
  f:maj7.11+

  bes:maj7
  g:min7
  es:maj7
  e:7
}

\include "footer.ly"
