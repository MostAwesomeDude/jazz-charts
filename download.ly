\version "2.12.0"

\include "header.ly"

\header {
    title = "You Wouldn't Download a Car"
    pagenumber = "no"
}

nc = \chordmode {
  r1
  r
}

head = \relative c'' {
  g8. bes16~ bes d8 cis16~ cis a8 c16~ c bes a aes
  g4-^ d8 fis16 g-. r8 r16 g, r4
  g'8. bes16~ bes d8 cis16~ cis a8 c16~ c bes a aes
  g4-^ d8 fis16 g-. r16 cis'8.~ \bendAfter #3 cis4
  g,8. bes16~ bes d8 cis16~ cis a8 c16~ c bes a aes
  g4-^ d8 fis16 g-. r8 r16 g, r4
  g'8. bes16~ bes d8 cis16~ cis a8 c16~ c bes a aes
  g4-^ d8 fis16 g-. r2
  \bar "||" \break
}

verse = \relative c' {
  f1~
  f2. e8 c
  d1
  c4. bes8 c d g fis
  f1
  e2. d8 c
  d2 c8 d4 e8
  es4. c8 d es f g
  aes1
  c4. \glissando bes4. r8 aes16 bes
  c8 bes16 aes~ aes g8 g16 \trill g8 f es f
  es8. des16~ des4~ des8 d es e
  f1
  e2. d8 c
  d2 c8 d4 e8
  f4. g,8 a bes c d
}

versechords = \chordmode {
  g1:m7
  c:7
  g:m7
  aes:maj7
  g:m7
  c:7
  g:m7
  aes:maj7
  f:m7
  bes:7
  f:m7
  ges:maj7
  g:m7
  c:7
  g:m7
  g:m7
}

chorus = \relative c' {
  es2. d8 c
  fis2 bes
  a4 \turn g2.~
  g4. g,8 a bes c d
  es2. d8 c
  fis2 es'4 es
  d2 \comp #2
  \comp #1 r8 g,, a bes c d
  es2. d8 c
  f2 g
  a4 \trill f2.
  es4. bes8 c d es f
  g1
  ces1
}

choruschords = \chordmode {
  c1:m7
  d:7
  g2:m7 ges4:m7 f:m7
  e1:m7.5+
  es:7
  d:7
  g:m7
  g:m7
  c:m7
  f:7
  bes:maj7
  es:maj7
  aes:maj7
  des:7
}

chorustag = \relative c' {
  r4 d16 r8 d16 es es es es d r8 d16
  f4-> fis-> r r16 g16-^ r8
}

melody = \relative c'' {
  \time 4/4
  \key g \minor

  \head
  \verse
  \bar "||" \break
  \chorus
  \chorustag

  \pageBreak

  \head
  \mark "Corbin's solo"
  \bar "|:"
  \comp #(* 16 4)
  \bar ":|:" \break

  \mark "Lance's solo"
  \comp #(* 6 4)
  \bar ":|"
}

harmony = \chordmode {
  \set chordChanges = ##t

  \nc
  \nc
  \nc
  \nc
  \versechords
  \choruschords
  \nc

  \nc
  \nc
  \nc
  \nc
  % Corbin's solo
  \versechords

  % Lance's solo
  g1:m7
  g:m7
  c:m7
  g:m7
  d:7
  g:m7
}

\include "footer.ly"
