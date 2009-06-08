\version "2.12.0"

melody = \relative c' {
    \override Glissando #'style = #'zigzag

    \time 4/4
    \key c \minor

    \partial 4*2 c4 ^"Latin" es
% 1
    g4. fis8 g2~
    g\glissando bes2\glissando
    g1~
    g4 r c, es
% 5
    g4. fis8 g2~
    g c4 bes
    g1~
    g2. r4
% 9
    r4 r8 c d4 es
    d c bes c
    bes4. aes8~ aes2~
    aes4 r c, es
% 13
    g4. fis8 g2~
    g\glissando bes2\glissando
    g1~
    g2 r \bar "||"
% 17
    f4 ^"Swing" g8 aes g f r e~
    e4 f8 g f e r es~
    es4 f8 ges f es r d~
    d4 es8 f es d r f~
% 21
    f4 g8 aes g f r g~
    g4 f8 g f4 bes,8 d~
    d1
    r1
% 25 \partial
    r2 c4 es
}  % notes

harmony = \chords {
    \set chordChanges = ##t

    \partial 2*4 r2
% 1
    c1:min7
    c:min7
    c:min7
    c:min7
% 5
    c:min7
    c:min7
    c:min7
    g2:dim7 c:7
% 9
    f1:min7
    f:min7
    f:min7
    des:maj7
% 13
    c:min7
    c:min7
    c:min7
    c:min7
% 17
    aes:13
    g:13
    ges:13
    f:min13
% 21
    aes:13
    g:7.9-
    c:9
    c:9
% 25 \partial
    c:9
}

\score {
    <<
        \context ChordNames \harmony
        \context Staff \melody
    >>
}
