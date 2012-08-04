\version "2.14.2"

\include "header.ly"

\header {
    title = "It's About Time"
    pagenumber = "no"
}

melody = \relative d' {
  \time 7/8
  \key d \minor
  \set Timing.beatStructure = #'(2 2 3)

  \repeat volta 2 {
    \repeat unfold 8 {
      e8 d f d e d c
    }
  }

  \break

  \repeat volta 2 {
    <<
      \repeat unfold 8 {
        g'8 f a f g f e
      }
      \\
      \repeat unfold 8 {
        e8 d f d e d c
      }
    >>
  }

  \break

  g''2.. | g |
  f4 e8 d4 d | d2.. |
  g8 f e d f e d | c e d c b bes b |
  c cis d f, g a b |
  a g f \times 2/3 { f g a b c d } |

  \break

  \repeat volta 8 {
    \compeight #(* 7 8)
  }

  \break

  \repeat volta 2 {
    <<
      \repeat unfold 8 {
        g8 f a f g f e
      }
      \\
      {
        \repeat unfold 2 {
          e8 d f d e d c
        }
        \repeat unfold 2 {
          d8 c e c d c bes
        }
        \repeat unfold 4 {
          c8 bes d bes c bes a
        }
      }
    >>
  }

  \break

  \key e \minor

  \repeat volta 2 {
    <<
      \repeat unfold 8 {
        a'8 g b g a g fis
      }
      \\
      {
        \repeat unfold 2 {
          fis8 e g e fis e d
        }
        e8 d fis d e d cis
        d8 cis e cis d cis b
        \repeat unfold 3 {
          d8 c e c d c b
        }
        dis8 c e c fis e dis
      }
    >>
  }
}

harmony = \chords {
  \set chordChanges = ##t

  d2..:m
  d:m
  d:m
  d:m
  bes:maj
  bes:maj
  bes:maj
  bes:maj
  d:m
  d:m
  d:m
  d:m
  bes:maj
  bes:maj
  bes:maj
  bes:maj
  g:7
  g:7
  g:7
  g:7
  g:7
  g:7
  g:7
  g:7
  a:7
  a:7
  a:7
  a:7
  es:7
  es:7
  es:7
  es:7
  d:m
  d:m
  d:m/c
  d:m/c
  bes:maj
  bes:maj
  bes:maj
  bes:maj
  e:m
  e:m
  e:m/d
  cis:7.5-
  c:maj
  c:maj
  c:maj
  b:7
}

\include "footer.ly"
