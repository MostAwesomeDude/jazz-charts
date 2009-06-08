\version "2.12.0"

melody = \relative c' {
    \override Glissando #'style = #'zigzag

    \time 4/4
    \key c \minor

    \partial 4*2 <aes c>4 ^"Latin" <ces es> \bar "|:"
% 1
    <es g>4. <d fis>8 <es g>2~
    <es g>\glissando <ges bes>2\glissando
    <es g>1~
    <es g>4 r <aes, c> <ces es>
% 5
    <es g>4. <d fis>8 <es g>2~
    <es g> <aes c>4 <ges bes>
    <es g>1~
    <es g>2. r4
% 9
    r4 r8 <aes c> d4 <ces es>
    <bes d> <aes c> <ges bes> <aes c>
    <ges bes>4. <fes aes>8~ <fes aes>2~
    <fes aes>4 r <aes, c> <ces es>
% 13
    <es g>4. <d fis>8 <es g>2~
    <es g>\glissando <ges bes>2\glissando
    <es g>1~
    <es g>2 r \bar "||"
% 17
    f4 ^"Swing" g8 aes g f r e~
    e4 f8 g f e r es~
    es4 f8 ges f es r d~
    d4 es8 f es d r f~
% 21
    f4 g8 aes g f r g~
    g4 f8 g f4 <ges, bes>8 <bes d>~
    d1
    r1
% 25 \partial
    r2 <aes c>4 <ces es> \bar ":|"
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
