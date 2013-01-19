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
compeight = #(define-music-function (parser location count) ( integer?)
    #{
        \override Rest #'stencil = #ly:percent-repeat-item-interface::beat-slash
        \override Rest #'thickness = #0.48
        \override Rest #'slope = #1.7
        \repeat unfold $count { r8 }
        \revert Rest #'stencil
        \revert Rest #'thickness
        \revert Rest #'slope
    #}
)

% Compound time
#(define ((compound-time first second base) grob)
  (grob-interpret-markup grob
   (markup #:override '(baseline-skip . 0) #:number
    (#:line
     ((#:column (first base)) #:vcenter "+" (#:column (second base)))))))

% Make everything slightly larger (and thus more readable)
#(set-global-staff-size 23)
