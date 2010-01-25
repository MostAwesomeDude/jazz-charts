\version "2.12.0"

\include "header.ly"

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

\include "footer.ly"
