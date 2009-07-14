\version "2.12.0"

\header {
    title = "This Can't Be Love"
    pagenumber = "no"
}

melody = \relative c' {
    \time 4/4
    \key f \major

    \partial 4*4 r4 f4 e f  {
    c4. f8 e4 f
    d2 f4 g ~
    g2. f4 
    a2. c,4 \break 
% 4
    c d2 f4
    g1 ~
    g1 \bar "||" 
    r4 f4 e f 
% 8
    c4. f8 e4 f \break
    d2 f4 g ~
    g2. f4 
    c2. f4
% 16
    f a2 g4
    f1 \break
    r4 a4 a a \bar "||"
    b,2 d4 cis ~
% 20
    cis a' a a
    c1 ~
    c4 a a a \break
    c1
% 24
    bes
    a
    g \bar "||" 
    r4 f4 e f 
% 28
    c4. f8 e4 f \break
    d2 f4 g ~
    g2. f4
    d2. f4 
% 32
    f a2 g4
    f1 ~
    f1 \bar "|."
    }
} % notes

harmony = \chords {
    \set chordChanges = ##t

    \partial 4*4 f1:6.9 ~
      f:6.9
      bes:7 ~
      bes:7
      f:maj7
% 4
      d:m7
      g:m7
      c:7
      f:6.9 ~
% 8
      f:6.9
      bes:7 ~
      bes:7
      a2:m7 d:m7
% 16
      d:m7 c:7
      f1:6.9 ~
      f:6.9
      e:m7
% 20
      a:7
      d:m7 ~
      d:m7
      a:m7.5-
% 24
      d:7.9-
      d:m7
      c:7
      f:6.9 ~
% 28
      f:6.9
      bes:7 ~
      bes:7
      a2:m7 d:m7
% 32
      g:m7 c:7
      f1:6.9 ~
      f1:6.9
} % chords

\score {
    <<
        \context ChordNames {
          %%\transpose c d \harmony
          \harmony
        }
        \context Staff {
          %\transpose c d \melody
          \melody
        }
    >>
}
