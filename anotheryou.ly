\version "2.12.0"

% Comping slashes
comp = #(define-music-function (parser location count) ( integer?)
    #{
        \override Rest #'stencil = #ly:percent-repeat-item-interface::beat-slash
        \override Rest #'thickness = #0.48
        \override Rest #'slope = #1.7
        \repeat unfold $count { r4 }
        \revert Rest #'stencil
        \revert Rest #'thickness
        \revert Rest #'slope
    #}
)

\header {
    title = "There Will Never Be Another You"
    pagenumber = "no"
}

melody = \relative c' {
    \time 4/4
    \key es \major

% 1
\comp #16
% 5
\comp #16
% 9
\comp #16
% 13
\comp #16
% 17
\comp #16
% 21
\comp #16
% 25
\comp #16
% 29
\comp #16
}

harmony = \chords {
    \set chordChanges = ##t

% 1
es1:maj9
es:maj9
d:m7.5-
g:7
% 5
c:m7
b:m7
bes:m7
es:7
% 9
aes:maj7
des:7
g:m7
c:9
% 13
f:7
f:7
f:m7
bes:7
% 17
es1:maj9
es:maj9
d:m7.5-
g:7
% 21
c:m7
b:m7
bes:m7
es:7
% 25
aes:maj7
des:7
g2:m7 c:7
f:m7 bes:7
% 29
es:maj7 d:7
g:7 c:7
f:min7 bes:7
es:maj6
}

\score {
    <<
        \context ChordNames \harmony
        \context Staff \melody
    >>
}
