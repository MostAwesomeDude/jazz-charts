\version "2.12.0"

\header {
    title = "Greensleeves"
    pagenumber = "no"
}

melody = \relative c'' {
    \time 6/8
    \key a \minor

    \override Glissando #'style = #'zigzag

    c4 d8 e8. f16 e8
    d4 b8 g8. a16 b8
    c4 a8 a8. gis16 a8
    b4 gis8 e4 a8
    c4 d8 e8. f16 e8
    d4 b8 g8. a16 b8
    c8. b16 a8 gis8. f16 gis8
    a4. a4.

    g'4. g8 fis e
    d4 b8 g8. a16 b8
    c4 a8 a8. gis16 a8
    b4 gis8 e4. \glissando
    g'4. g8 fis e
    d4 b8 g8. a16 b8
    c8. b16 a8 gis8. f16 gis8
    a4. a4.

} % notes

harmony = \chords {
    \set chordChanges = ##t

    a2.:min7
    g:maj
    f:maj7
    e:7
    a:min7
    g:maj
    f4.:maj7 e:7
    a2.:min7

    c:maj7
    g:maj7
    f:maj7
    e:7
    c:maj7
    g:maj7
    f4.:maj7 e:7
    a:min7
} % chords

\score {
    <<
        \context ChordNames \harmony
        \context Staff \melody
    >>
}
