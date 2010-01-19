\version "2.12.0"

#(define ((compound-time first second base) grob)
  (grob-interpret-markup grob
   (markup #:override '(baseline-skip . 0) #:number
    (#:line
     ((#:column (first base)) #:vcenter "+" (#:column (second base)))))))

\header {
    title = "Conversation with Catherine"
    pagenumber = "no"
}

melody = \relative c'' {
  \override Staff.TimeSignature #'stencil = #(compound-time "6" "5" "4")
  \key g \major
  \time 11/4

  \repeat volta 2 {
    r1 r2
    r1 r4
    r1 r2
    r1 r4
  }
  \break
} % notes

harmony = \chords {
  \set chordChanges = ##t

  g1:maj7~ g4:maj7 a4:maj9
  g1:maj7 e4:6
  g1:maj7~ g4:maj7 a4:maj9
  g1:maj7 e4:6
  g1:maj7~ g4:maj7 a4:maj9
  g1:maj7 e4:6
  g1:maj7~ g4:maj7 a4:maj9
  g1:maj7 e4:6
} % chords

\include "footer.ly"
