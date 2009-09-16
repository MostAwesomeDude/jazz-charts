\version "2.12.0"

\header {
    title = "This Can't Be Love"
    pagenumber = "no"
}

melody = \relative c' {
    \time 4/4
    \key f \major

% 1
r4 f e f
c4. f8 e4 f
d2 f4 g~
g2. f4
% 5
a2. c,4
c d2 f4
g1~
g
% 9
r4 f e f
c4. f8 e4 f
d2 f4 g~
g2. f4
% 13
c'2. f,4
f a2 g4
f1~
r4 a a a \bar "||"
% 17
b,2 d4 cis~
cis a' a a
c1~
c4 a a a
% 21
c1
bes
a
g
% 25
r4 f e f
c4. f8 e4 f
d2 f4 g~
g2. f4
% 29
d'2. f,4
f a2 g4
f1~
f
} % notes

harmony = \chords {
    \set chordChanges = ##t

% 1
f1:6.9
f:6.9
bes:7
bes:7
% 5
f:maj7
d:m7
g:m7
c:7
% 9
f:6.9
f:6.9
bes:7
bes:7
% 13
a2:m7 d:m7
g:m7 c:7
f1:6.9
f:6.9
% 17
e:m7
a:7
d:m7
d:m7
% 21
a:m7.5-
d:7.9-
g:m7
c:7
% 25
f:6.9
f:6.9
bes:7
bes:7
% 29
a2:m7 d:m7
g:m7 c:7
f1:6.9
f:6.9
} % chords

\score {
    <<
        \context ChordNames \harmony
        \context Staff \melody
    >>
}
