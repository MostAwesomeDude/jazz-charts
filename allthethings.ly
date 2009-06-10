\version "2.12.0"

\header {
    title = "All The Things You Are"
    pagenumber = "no"
}

melody = \relative c'' {
    \set Staff.extraNatural = ##f

    \time 4/4
    \key f \minor

% 1
gis8 cis,~ cis4 r4 r8 ais'8
gis cis, r ais' gis cis, r ais'
gis8 c,~ c4 r4 r8 ais'8
gis c, r ais' gis c, r ais'
% 5
gis8 cis,~ cis4 r4 r8 ais'8
gis cis, r ais' gis cis, r ais'
gis8 c,~ c2.
r1 \bar "|:"
% 9
aes'1
des2. aes4
g g g g
g c2 g4
% 13
f f f f
f b2 f4
e1~
e
% 17
es
aes2. es4
d d d d
d g2 d4
% 21
c c c c
c d8 es d4 c
b1
% 25
% 29
% 33
% 37
% 41
% 45
}

harmony = \chords {
    \set chordChanges = ##t

% 1
cis1:7
cis:7
c:aug7
c:aug7
% 5
cis:7
cis:7
c:aug7
c:aug7
% 9
f2:m7 \parenthesize b:dim7
bes:m7 \parenthesize e:7
es:7 \parenthesize a:maj7
aes:maj7 \parenthesize d:maj7
% 13
des:maj7 \parenthesize ges:7
d:m7 g:7
c:maj7 \parenthesize e:maj7
\parenthesize aes:maj7 \parenthesize g:7
% 17
c:m7 \parenthesize fis:dim7
f:m7 \parenthesize b:7
bes:7 \parenthesize e:maj7
es:maj7 \parenthesize a:maj7
% 13
aes:maj7 \parenthesize des:7
a:m7.5- d:7.9-
g1:maj7
e:7.9-
% 21
% 25
% 29
% 33
% 37
% 41
% 45
}

\score {
    <<
        \context ChordNames \harmony
        \context Staff \melody
    >>
}
