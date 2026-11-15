#import "metadata.typ": *

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2cm, left: 3cm, right: 2cm),
  header: context {
    if counter(page).get().first() > 1 {
      align(right)[#text(size: 9pt, style: "italic")[#title]]
    }
  },
  footer: context {
    align(center)[#text(size: 10pt)[#counter(page).display("1")]]
  },
)
#set text(font: "Times New Roman", size: 12pt, lang: "ro")
#set par(
  leading: 0.82em,
  justify: true,
  first-line-indent: 1.25cm,
  spacing: 1em,
)
#show heading.where(level: 1): set block(breakable: true)
#show heading.where(level: 1): set text(size: 14pt, weight: "bold")
#show heading.where(level: 2): set text(size: 12pt, weight: "bold")

#page(numbering: none)[
  #align(center)[
    #v(1cm)
    #text(size: 14pt, weight: "bold")[#university]
    #v(0.35cm)
    #text(size: 13pt)[#faculty]
    #v(2.5cm)
    #text(size: 15pt, weight: "bold")[#course]
    #v(2cm)
    #text(size: 18pt, weight: "bold")[#title]
    #v(0.5cm)
    #text(size: 14pt, style: "italic")[#subtitle]
    #v(3cm)
    #align(right)[
      #text(size: 12pt)[Autor: #author_first #author_name]
      #linebreak()
      #text(size: 12pt)[Profesor coordonator: #professor]
    ]
    #v(1fr)
    #text(size: 12pt)[#locality, #year]
  ]
]

#pagebreak()
#outline(title: "Cuprins", indent: 1.2em)
#pagebreak()

#include "sections/01_precontext.typ"
#include "sections/02_text_critica.typ"
#include "sections/03_exegeza.typ"
#include "sections/04_actualizare.typ"
#include "sections/05_bibliografie.typ"
