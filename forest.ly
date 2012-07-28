\version "2.12.0"

\include "header.ly"

\header {
    title = "Mana Forest"
    pagenumber = "no"
}

melody = \relative c' {
  \time 4/4
  \key g \major

  \repeat volta 2 {
    \comp #32
  }

  \break

  \repeat volta 2 {
    e4 e8 d16 e~ e2
    r8 b d b g'4 g
    g e8 d16 e~ e2
    r4 d16 b8 a16~ a ais8 b16~ b d8 dis16
    e4 e8 d16 e~ e2
    r8 b d b g'4 g
    g e8 d16 e~ e2
    r4 d16 b8 a16~ a ais8 b16~ b d8 dis16
  }

  \break

  \repeat volta 2 {
    r2 r4 <d a' b e>16 <d a' b e> <d a' b e> <d a' b e>
    r1
    r2 g16 a b d a b d e
    r1
    r2 r4 <d, a' b e>16 <d a' b e> <d a' b e> <d a' b e>
    r1
    r2 g16 a b d a b d e
    r1
  }
}

harmony = \chords {
  \set chordChanges = ##t

  c1:maj7
  d2:7 b:7
  e1:m7
  cis:m7.5-
  a:m7
  d2:7 aes:7
  g1:maj7
  b:m7

  c1:maj7
  d2:7 b:7
  e1:m7
  cis:m7.5-
  a:m7
  d2:7 aes:7
  g1:maj7
  b:m7

  c1:maj7
  d2:7 b:7
  e1:m7
  cis:m7.5-
  a:m7
  d2:7 aes:7
  g1:maj7
  b:m7
}

\include "footer.ly"
