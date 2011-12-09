\version "2.12.0"

\include "header.ly"

\header {
    title = "The Christmas Song"
    pagenumber = "no"
}

melody = \relative c' {
  \time 4/4
  \key es \major

  \repeat volta 2 {
    es4 es' d8 c bes aes
    g4 g g2
    es4 c' bes8 aes g f
    es1
    es4 es f8 f es f
    \times 2/3 { g4 bes c } d4. c8
  }
  \alternative {
    {
      b4 b des8 ces bes aes
      bes2 bes8 aes g f
    }
    {
      bes8 g c bes aes4. d,8
      es2 r8 es d es
    }
  }

  des'2~ des8 c bes a
  bes2 r8 es, d es
  des'8 c des c des c bes aes
  bes2 r8 es, d es
  ces'8 bes ces4~ ces8 bes aes ges
  aes2~ aes8 ges aes ges
  f8 f~ \times 2/3 { f8 f f } \times 2/3 { f4 f f }
  f2. r8 g

  es4 es' d8 c bes aes
  g4 g g2
  es4 c' bes8 aes g f
  es1
  es4 es f8 f es f
  \times 2/3 { g4 bes c } d4. c8
  bes4 es,2 f4
  es1
}

harmony = \chords {
  \set chordChanges = ##t

  es2:maj7 aes2:9
  c1:m7
  aes2:maj7 g2:7.9-
  c2:m7 f2:7
  aes2:6.9 des2:7
  es2:6.9 a4.:m7 d8:7
  g2:maj7 aes4:m7 des4:7
  ges2:maj7 bes2:7
  g4:m7 c4:7.9- f4.:m7 b8:7
  es1:6.9

  bes2:m7 es2:7
  aes1:maj7
  bes2:m7 es2:7
  aes1:maj7
  aes2:m7 des2:7
  ges1:maj7
  f1:7sus4
  f2:m7 bes2:7

  es2:maj7 aes2:9
  c1:m7
  aes2:maj7 g2:7.9-
  c2:m7 f2:7
  aes2:6.9 des2:7
  es2:6.9 a4.:m7 d8:7
  g4:m7 c4:7.9- f4:m7 b4:7
  es1:6.9
}

\include "footer.ly"
