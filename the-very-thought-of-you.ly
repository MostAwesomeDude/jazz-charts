\version "2.12.0"

\header {
    title = "The Very Thought of You"
    pagenumber = "no"
}

melody = \relative c' {
    \time 4/4
    \key aes \major

    \partial 8*3 c8 es c \bar "||"  {
    es8 es es2. ~
    es2 ~ es8 c es c
    f f f2. ~ 
% 4
    f2 f8 f as f \break
    as4. f8 as4. f8
    as4. f8 \times 2/3 { as4 f as }
    c8 c c2. ~ 
% 8
    c2 ~ c8 c es c \bar "||" \break
    es4. c8 es4. c8
    bes4 bes2 as4
    c4. as8 c4. as8 
% 12
    g2. f4 \break
    es4. c8 es4. f8
    g4 g2 as4
    bes2 ~ bes8 as f des
% 16
    bes2 r8 c8 es c \bar "||" \break
    es es es2. ~
    es2 ~ es8 c es c
    f f f2. ~
% 20
    f2 ~ f8 f as f \break
    as4. f8 as4. f8
    as4. f8 \times 2/3 { as4 f as }
    c8 c c2. ~
% 24
    c2 c8 c es c \bar "||" \break
    es4. c8 es4. c8
    bes4 b2 as4
    c4. as8 c4. as8
% 28
    f2 r8 c8 es c \break
    es8 es es4 ~ es8 c es c
    es8 es es2 c'4
    as1 ~
    as1 \bar "|."
    }
} % notes

harmony = \chords {
    \set chordChanges = ##t

    \partial 8*3 es8:7 r8 r
    as2:maj7 des:maj7
    c:m7 es:7sus4
    as:6 des:maj7
% 4
    c:m7 es:7sus4
    as:6.9 bes:m7
    b:dim7 as/c
    bes1:9 ~ bes1:9
% 8
    bes2:m7 es:7
    g:m7.5- c:7.9-
    f:m7 f:m7/es
% 12
    d:m7 g:7
    c:m7 f:m7.5-
    bes:7sus4 bes:7
    bes:m7 f:aug7
% 16
    e:7.11+ es:7
    as:maj7 des:maj7
    c:m7 es:7sus4
    as:6 des:maj7
% 20
    c:m7 es:7sus4
    as:6.9 bes:m7
    b:dim7 as/c
    bes1:9 ~ 
% 24
    bes1:9
    bes2:m7 es:7
    g:m7.5- c:7.9-
    f:m7 f:m7/es
% 28
    d:m7.5- a:dim7
    bes:m7 a:dim7
    bes:m7 es:7.9-
    as:6.9 ~ as:6.9
} % chords

\score {
    <<
        \context ChordNames {
          %%\transpose c d \harmony
          \harmony
        }
        \context Staff {
          %\transpose c d \melody
          \melody
        }
    >>
}
