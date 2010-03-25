\version "2.12.0"

\include "header.ly"

\header {
    title = "'Round Midnight"
    pagenumber = "no"
}

melody = \relative c' {
  \key es \minor

  \repeat volta 2 {
    r4 bes16 es f bes g4. bes,8 |
    es4. d16 es bes'8 aes r4 |
    r4 es16 ges bes des c4. es,8 |
    a8 fis16 d gis4 aes8 f16 des g4 |
    r4 aes16 c es ges f4. c8 |
    bes4 \times 2/3 { es,8 d des } c8 aes'4 es16 f |
  }
  \alternative {
    {
      \times 2/3 { g8 g g g g g } f4. des8 |
      d bes r4 r2 |
    }
    {
      ges'4 f8 es f4 es8 des |
      es2. es8 f |
    }
  } \bar "||"

  ges4 f8 es f4 es8 des |
  d bes' r4 r es,8 f |
  ges4 f8 es f4 es8 des |
  d bes r4 r bes' |
  ces4. ces8 bes4. bes8 |
  aes4 ges f4. bes8 |
  es8 es es4 des8 des des4 |
  ces4 es,8 d bes' aes e d |

  r4 bes16 es f bes g4. bes,8 |
  es4. d16 es bes'8 aes r4 |
  r4 es16 ges bes des c4. es,8 |
  a8 fis16 d gis4 aes8 f16 des g4 |
  r4 aes16 c es ges f4. c8 |
  bes4 \times 2/3 { es,8 d des } c8 ges'4 es16 f |
  ges4 f8 es f4 es8 des |
  es1
} % notes

harmony = \chords {
  \set chordChanges = ##t

  es2:m c:7.5-
  ces:7 bes:7
  es:m7 aes:7
  b4:m7 e:7 bes:m7 es:7
  aes2:m7 des:7
  es:m7 aes:7
  % 1.
  c:7.5- f:7
  bes1:7.9-
  % 2.
  b2:7 bes:7
  es1:maj7

  fis2:7.5- b:7.5-
  e1:7.11+
  c2:7.5- f:7.9-
  bes1:7
  aes4:m7 des:7 ges2:maj7
  b:7 bes:7
  es4:m7 aes:7 des:m7 ges:7
  b2:7 bes:7.11+

  es2:m c:7.5-
  ces:7 bes:7
  es:m7 aes:7
  b4:m7 e:7 f:dim aes:dim/cis
  fis1:m
  c2:m7 aes:7
  b:7 bes:7
  es1:maj7
} % chords

\include "footer.ly"
