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
    title = "Last Chance"
    pagenumber = "no"
}

melody = \relative c' {
    \set Score.markFormatter = #format-mark-box-letters

    \time 4/4
    \key c \minor

% 1
    r1
    r
    \bar "||" \mark \default
% 3
    \comp #4
    \comp #4
    \comp #4
    \comp #4
% 7
    \comp #4
    \comp #4
    \comp #4
    \comp #4
% 11
    \comp #4
    \comp #4
    \comp #4
    \comp #4
% 15
    \comp #4
    \comp #4
    \comp #4
    \comp #4
% 19
    \comp #4
    \comp #4
    \bar "||" \mark \default
% 21
    c4. c8 g4 c
    d4. d8 aes2
    d4. d8 aes4 d
    es4. es8 bes2
% 25
    es4. es8 bes4 es
    f4. f8 c4 f
    g8 g g r r4 g8 g
    g4 r4 r2
% 29
    \key f \minor
    \repeat volta 2 {
        \mark \default
        \comp #4
    }
% 30
    \key fis \minor
    \repeat volta 2 {
        \mark \default
        \comp #4
    }
% 31
    \key g \minor
    \repeat volta 2 {
        \mark \default
        \comp #4
    }
}

harmony = \chords {
    \set chordChanges = ##t

% 1
    r1
    r
% 3
    c2:m7 d:m7
    c:m7 d:m7
    c:m7 d:m7
    c:m7 d:m7
% 7
    c:m7 d:m7
    c:m7 d:m7
    c:m7 d:m7
    c:m7 d:m7
% 11
    c:m7 d:m7
    c:m7 d:m7
    c:m7 d:m7
    c:m7 d:m7
% 15
    c:m7 d:m7
    c:m7 d:m7
    c:m7 d:m7
    c:m7 d:m7
% 19
    g1:7.9-
    f:dim7
% 21
    c:m7
    d:7.5-
    d:7.5-
    es:maj6
% 25
    es:maj6
    f:m7
    g:maj
    g:maj
% 29
    f2:m7 g:m7
% 30
    fis:m7 gis:m7
% 31
    g:m7 a:m7
}

\score {
    <<
        \context ChordNames \harmony
        \context Staff \melody
    >>
}
