\version "2.12.0"

\header {
    title = "Green Dolphin Street"
    pagenumber = "no"
}

melody = \relative c'' {
    \time 4/4
    \key c \major

\repeat volta 2 {
% 1
c2 c~
c \times 2/3 {b4 g e}
bes'1~
bes
% 5
a2 a~
a \times 2/3 {aes4 f des}
g1~
g \break
% 9
r8 g4. d4 e
f g aes bes
g1~
g
% 13
r8 bes4. f4 g
aes bes ces des
bes1~
bes2 b \break
% 17
c c~
c \times 2/3 {b4 g e}
bes'1~
bes
% 21
a2 a~
a \times 2/3 {aes4 f des}
g1~
g \break
% 25
r8 g4. d4 e
f g gis e'
d2 c
c,4 d dis b'
% 29
a2 g
r8 g4. g4 g
} % repeat
\alternative {
    { % open ending
    g1~
    g
    }
    { % last time
    g1
    r8 g4. g4 g
    g1
    r8 g4. g4 g
    g1 \fermata
    }
} % alternative
} % notes

harmony = \chords {
    \set chordChanges = ##t

% 1
c1:maj7
c:maj7
c:min9
c:min9
% 5
c:maj9.11+
c:min7.5-
c:maj7
c:maj7
% 9
d:m7
g2:7 cis:maj7
c1:maj7
c1:7
% 13
f:m7
bes2:7 e:maj7
es1:maj7
d2:m7 g:7
% 17
c1:maj7
c:maj7
c:min9
c:min9
% 21
c:maj9.11+
c:min7.5-
c:maj7
c:maj7
% 25
d:m7
b2:m7.5- e:7.9-
a:m7 a:m7/g
fis:m7.5- b:7
% 29
e:m7 a:7
d:m7 g:7
c1:maj7
d2:m7 g:7
% outro
e:m7 a:7
d:m7 g:7
e:m7 es:m7
d:m7 des:maj7
c1:maj7
} % chords

\score {
    <<
        \context ChordNames \harmony
        \context Staff \melody
    >>
}
