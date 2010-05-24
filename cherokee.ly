\version "2.12.0"

\include "header.ly"

\header {
    title = "Cherokee"
    pagenumber = "no"
}

melody = \relative c' {
  \time 4/4
  \key bes \major

  \repeat volta 2 {
    d1 f2 g bes1 g
    f d2 f d1 c \break
    bes d2 f d'1 bes
  }
  \alternative {
    {
      g f2 d c1 cis
    }
    {
      g' d bes1~ bes
    }
  }

  \bar "||"

  dis'1~ dis2 cis
  cis4 ais fis2~ fis cis'
  cis4 a fis2~ fis b
  e,1~ e
  b'1~ b2 a
  a4 fis d2~ d a'
  a4 f d2~ d g
  c,1 cis \bar ":|"

  \comp #64
  \bar "||"
  \comp #64
} % notes

harmony = \chords {
  \set chordChanges = ##t

  bes1:6 bes:6 f:m7 bes:7
  es:maj7 es:maj7 es:m7 es:m7
  g:m7 g:m7 c:7 c:7
  c:m7 g:7 f:7 f:7.5+
  c:m7 f:7.5+ bes:6 bes:6

  cis:m7 fis:7
  b:maj7 b:maj7
  b:m7 e:7
  a:maj7 a:maj7
  a:m7 d:7
  g:maj7 g:maj7
  g:m7 c:7
  f:7 f:7.5+

  bes1:6 bes:maj7 f:m7 bes:7
  es:maj7 es:6 es:m7 d:7
  g:m7 aes:7 d:7 des:7
  c:m7 g:7 fis:7 f:7.5+

  bes1:6 bes:maj7 f:m7 bes:7
  es:maj7 es:6 es:m7 d:7
  g:m7 aes:7 d:7 des:7
  c:m7 f:7.5+ bes:6 b:maj7

} % chords

\include "footer.ly"
