\version "2.12.0"

\include "header.ly"

\header {
    title = "Delicious Marble Cake"
    pagenumber = "no"
}

melody = \relative c''' {
  \time 4/4
  \key bes \major

  \repeat volta 2 {
    \times 2/3 { a16 bes a } f d~ d8 \times 2/3 { e16 f e }
    d bes8. \times 2/3 { a'16 bes a } f d
    e c d bes c d c bes
    f'4 e16 d c bes
    a4~ a16 a8. g2
    f4~ f16 f8. es2
  }

  g8. aes8. c8. des8. g,8. aes16~
  aes8 c8. des8.~ des4 c
  des1
  d2 fis

  \repeat volta 2 {
    \times 2/3 { a16 bes a } f d~ d8 \times 2/3 { e16 f e }
    d bes8. \times 2/3 { a'16 bes a } f d
    e c d bes c d c bes
    f'4 e16 d c bes
    <aes c>8. <ges bes>8. <bes des>8~ <bes des>2
    \comp #4
  }

  eis,8. fis8. ais8. b8. eis,8. fis16~
  fis8 ais8. b8.~ b2~
  b1
  c
  \bar ".|."
}

harmony = \chords {
  \set chordChanges = ##t

  bes1:maj7.11+
  bes:maj7.11+
  es:maj7.11+
  es:maj7.11+

  des:maj7
  bes:min7
  c:7
  d:7

  g:min7
  g:min7
  ges:maj7.11+
  ges:maj7.11+

  b:maj7
  aes:min7
  e:maj7
  f:7
}

\include "footer.ly"
