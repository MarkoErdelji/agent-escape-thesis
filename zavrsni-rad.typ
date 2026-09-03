// У овом фајлу је потребно да укључите поглавља. Видети TODO доле.
// Такође, видите metadata.typ

#import "metadata.typ": *
#include "naslovna.typ"
#set page(
  paper: format_strane, 
  margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm) // Ovde stavi 1.5cm ili 2cm da KDI tabela stane!
)
#pagebreak()
#pagebreak()
#include "zadatak.typ"
#pagebreak()
#include "sukob-interesa.typ"
#set page(paper: format_strane, margin: (top: 2.5cm, bottom: 2.5cm, inside: 3cm, outside: 2.5cm))

#set text(lang: "sr")

#set document(title: naslov, author: autor)
#set heading(numbering: "1.1")
#set text(font: "Liberation Serif", size: 11pt)
#set par(justify: true, leading: 0.95em, spacing: 1.6em)
#show link: set text(blue)
#show cite: set text(blue)
#show ref: set text(blue)
#show heading: set text(hyphenate: false)

#show figure.where(
  kind: table
): set figure.caption(position: top)
#show figure.where(kind: raw): set figure(supplement: [Листинг])
#set ref(supplement: none)
// Нумерација слика/табела/листинга по поглављу (Слика 2.1, Табела 2.1)
#set figure(numbering: n => context {
  numbering("1.1", counter(heading).get().first(), n)
})


#import "@preview/hydra:0.6.2": hydra

#show heading.where(level: 1): (it) => {
    // Ресетовање бројача слика/табела/листинга за свако ново поглавље
    counter(figure.where(kind: image)).update(0)
    counter(figure.where(kind: table)).update(0)
    counter(figure.where(kind: raw)).update(0)
    pagebreak(weak: true)
    set block(spacing: 8pt)
    if heading.numbering != none {
        text("Глава " + counter(heading).display(), size: 22pt)
    }
    set par(justify: false)
    line(length: 100%)
    rect(align(right + horizon, text(it.body, size: 22pt)), fill: white, width: 100%)
    line(length: 100%)
    v(1em)
}

#outline(title: [Садржај], depth: 2)

#set page(header: context {
     // Хедери са текућим секцијама не иду на страницу са поглављима
     if not (query(heading.where(level: 1)).any(h => h.location().page() == here().page())) {
        align(right, emph(hydra(1)))
        line(length: 100%)
     }
})

#pagebreak(weak: false)
#set heading(numbering: "1.1")
#set page(numbering: "1")
#counter(page).update(1)


#include "poglavlja/1-uvod.typ"
#include "poglavlja/2-teorijske-osnove.typ"
#include "poglavlja/3-pregled-literature.typ"
#include "poglavlja/4-dizajn-eksperimenta.typ"
#include "poglavlja/5-realizacija.typ"
#include "poglavlja/6-rezultati-i-diskusija.typ"
#include "poglavlja/7-zakljucak.typ"



#set heading(numbering: none)
#show outline: set heading(outlined: true)


#show figure: it => {
    set text(size: 9pt)
    set block(breakable: true)
    set table(
        columns: (1fr, 4fr),
        align: left,
        inset: 8pt,
        stroke: 0pt)
    it
}

// Додаци
#include "poglavlja/dodatak 1 - skracenice.typ"

#show "Available at:": "Доступно на "
#bibliography(title: [Литература], "literatura.bib", style: "ieee.csl")
#checkbib()

#include "biografija.typ"

#metadata("kdi-start") <kdi-start>
#set page(numbering: none, margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm))
#pagebreak()
#include "kljucna.typ"

// Потребне исправке и дораде. У тексту користити са
// #todo[Коментар шта треба урадити]
// Функција todo се налази у модулу funkcije.typ
#todos()
