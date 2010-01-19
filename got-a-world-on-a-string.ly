\version "2.12.0"

\header {
    title = "I've Got the World on a String"
    pagenumber = "no"
}

melody = \relative c' {
    \time 4/4
    \key f \major

    \partial 8*3 c8 f a \repeat volta 2  {
      d8 c es d ~ d2
      c8 bes f' bes, a g4.
      g8 f c' f, e f4 e8 ~
      e2 es2 \break
% 4
      d4 d c d8 d ~
      d c4. a'4 a
      f1
    } % repeat
    \alternative {
      {
        r2 r8 c8 f a 
      }
      {
        r8 a8 a a a a a b ~ \bar "||" \break
      }
    }
% 8
    b1
    r8 a8 a a a a a b ~
    b1
    r8 a8 a a a a b e \break
% 12
    b1
    r8 g8 g g g g g a ~
    a1 ~
    a2 r8 c,8 f a \bar "||" \break
% 16
    d c es d ~ d2
    c8 bes f' bes, a g4.
    g8 f e f a c4 e8 ~
    e2 es \break
% 20
    f4 f d f8 f ~
    f8 d4. c4 a
    f1 ~
    f1 \bar "|."
} % notes

harmony = \chords {
    \set chordChanges = ##t

    \partial 8*3 r4 r8
    f4:maj7 es:7 d2:7
    g:m7 es:7.11+
    f:maj7 bes:7.11+
% 4
    a:m7 aes:m7
    g:m7 c4:7 fis:dim7
    g2:m7 c:7
    f1:6.9
    g2:m7 c:7
    f1:6.9
% 8
    e1:m7
    a:7
    a:m7
    d:7
% 12
    d:m7
    g:7
    g:m7
    c:7
% 16
    f4:maj7 es:7 d2:7
    g:m7 es:7.11+
    f:maj7 bes:maj7
    a:m7 aes:m7
% 20
    g:m7 d:7
    g:m7 c:7
    f1:6.9 ~
    f:6.9
} % chords

\include "footer.ly"
