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
% 21
% 25
% 29
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
% 21
% 25
% 29
}

\score {
    <<
        \context ChordNames \harmony
        \context Staff \melody
    >>
}
