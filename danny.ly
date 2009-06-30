\version "2.12.0"

\header {
    title = "Danny Boy"
    pagenumber = "no"
}

melody = \relative c' {
    \time 4/4
    \key es \major

    \partial 4*2 r8 d es f \repeat volta 2 {
% 1
    g4. f8 g c bes g
    f es c4~ c8 es g aes
    bes4. c8 bes g es g
    f2~ f8 d es f
% 5
    g4. f8 g c bes g
    f es c4~ c8 d es f
    g4. aes8 g f es f
    es2~ es8 bes' c d
% 9
    es4. d8 d c bes c
    bes g es4~ es8 bes' c d
    es4. d8 d c bes g
    f2~ f8 bes bes bes
% 13
    g'4. f8 f es c es
    bes g es4~ es8 d es f
    g c bes g f es c d
    } % repeat
    \alternative {
        {
        es2~ es8 d es f
        }
        {
        es1
        }
    }
    es
    d \fermata
} % notes

harmony = \chords {
    \set chordChanges = ##t

    \partial 2*4 r2
% 1
    es1:6
    d2:m7.5- g:7
    c4:m b:m bes:m a:m7.5-
    aes2:6 bes:7
% 5
    es2:6 g:7
    c:m7 a:m7.5-
    f:m7 bes:7
    es:6.9 \parenthesize bes:7
% 9
    es1:6
    d2:m7.5- g:7
    c4:m b:m bes:m a:m7.5-
    aes2:6 bes:7
% 13
    f:m7 g:7
    c:m7 fis:m7.5-
    f:m7 bes:7
    es1:6.9
% 14 (second ending)
    b:maj7
    e:maj7
    es:maj9
} % chords

\score {
    <<
        \context ChordNames \harmony
        \context Staff \melody
    >>
}
