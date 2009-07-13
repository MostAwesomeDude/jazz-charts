\version "2.12.0"

\header {
    title = "That's All"
    pagenumber = "no"
}

melody = \relative c' {
    \time 4/4
    \key bes \major

    \partial 8*2 d8 es \repeat volta 2 {
% 1
    f8 a f d f a f d
    f8 f f2 d8 es
    f8 a f d f a f d
    f2. g8 a \break
% 5
    bes d bes g bes4. g8
    bes d bes g bes4. g8
    f2. d4
    c2 r4 d8 f 
% 9
    f2. d4
    bes2 r4 bes8 bes' \break
    g4 bes,8 bes' g4 bes,8 bes'
    g4 g2 bes,8 bes' 
% 13
    g4 bes,8 bes' g4 bes,8 bes'
    g2 r4 c,8 c' \break
    a4 c,8 c' a4 c,8 c'
    a4 a2 c,8 c'
% 17
    a4 c,8 c' a4 c,8 c'
    f,2 f4 d8 es \break
    f8 a f d f a f d
    f f f2 d8 es 
% 21
    f8 a f d f a f d
    f2. g8 a \break
    bes d bes g bes4. g8
    bes d bes g bes4. g8
% 25
    f2. d4
    bes1
    } % repeat
} % notes

harmony = \chords {
    \set chordChanges = ##t

    \partial 8*2 r4
% 1
    bes2:maj7 c:m7
    d:m7 c:m7
    bes:maj7 es:maj7.11+
    d:m7 g:7
% 5
    e:m7.5- es:m7
    d:m7 des:dim7
    d:m7 g:7
    c:m7 f:7
% 9
    c:m7 f:7
    bes1:6.9
    f2:m7 bes:7.9-
    es:maj7 c:7.9-
% 13
    f:m7 bes:7.9-
    es:maj7 aes:7
    g:m7 c:7.9-
    f:maj7 d:7.9-
% 17
    g:m7 c:7.9-
    c:m7 f:7
    bes:maj7 c:m7
    d:m7 c:m7
% 21
    bes:maj7 bes:maj7.11+
    d:m7 g:7
    e:m7.5- es:m7
    d:m7 des:dim7
% 25
    c:m7 f:7
    bes1:6.9
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
