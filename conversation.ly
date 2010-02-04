\version "2.12.0"

\include "header.ly"

\header {
    title = "Conversation with Catherine"
    pagenumber = "no"
}

melody = \relative c'' {
  \key g \major
  \time 6/4

  \repeat volta 4 {
    \time 6/4
    r1 r4 r
    \time 5/4
    r1 r4
  }
  \break
  \repeat volta 2 {
    \time 6/4
    b2 b8 b d2 cis4
    \time 5/4
    b4. b8 b2 cis4
    \time 6/4
    fis, fis4. e8 fis4. e8 a4
    \time 5/4
    b4. a4 d cis4.
    \time 6/4
    a8 b4_. r8 g b4_. r8 d4 a
    \time 5/4
    d4. d8 d2 e4
    \time 6/4
    d8 b cis fis2 b,8 b4 cis
    \time 5/4
    g4. g8 g2 cis4
  }

  \time 9/4

  g4. a8 b4. cis8 fis, g a b a cis e b' g gis | \bar "||"

  \time 4/4

  \repeat volta 2 {
    \comp #32
  }
  a2~ a8 a4.
  gis2. gis4
  fis4.-_ g-_ e4~
  e1
  d2.. dis8~
  dis1
  d2 c2
  b8 gis a cis e b' g gis \bar "||"

  \time 3/4

  a, cis e b' g gis
  a, cis e b' g gis
  a g f dis cis b
} % notes

harmony = \chords {
  \set chordChanges = ##t

  \repeat unfold 5 {
    g1:maj7~ g4:maj7 a4:maj9
    g1:maj7 e4:6
  }

  r1 r1 r4

  \repeat unfold 2 {
    g1:maj7
    fis:min7
    g:maj7
    a:maj9
    c:maj7
    cis:min7
    g:min7
    e:sus4.9
  }
} % chords

\include "footer.ly"
