// ================================================================
// Shared style for the SwAT governing documents.
//
// Typst equivalent of the LaTeX preamble the constitution and the
// bylaws used to share:
//   - article class, 12pt, US Letter, uniform 2.5cm margins
//   - 1.5 line spacing
//   - blue hyperlinks for the table of contents and cross-references
//   - level 1 headings render as "Article I -- Name"
//   - level 2 headings render as "Section 1 -- Organization Name"
//   - level 3 headings render as a run-in italic lead-in
//   - (a) and (i) sub-level list styles
// ================================================================

// Shorthand for club name throughout the documents
#let org = [Software Acceleration Team]
#let orgshort = [SwAT]

// List styles for the (a) and (i) sub-levels
#let alphalist(..items) = enum(
  numbering: "a.",
  indent: 0.8em,
  body-indent: 0.6em,
  spacing: 1.1em,
  ..items,
)

#let romanlist(..items) = enum(
  numbering: "i.",
  indent: 1.6em,
  body-indent: 0.6em,
  spacing: 1.1em,
  ..items,
)

// Cross-reference: the number alone, with no "Article"/"Section" prefix.
#let num(target) = ref(target, supplement: none)

#let governing-doc(title: none, body) = {
  set document(title: title)

  // Article class, 12pt font, US Letter, uniform 2.5cm page margins
  set page(paper: "us-letter", margin: 2.5cm, numbering: "1", number-align: center)
  set text(font: "New Computer Modern", size: 12pt, lang: "en")

  // 1.5 line spacing, justified paragraphs, first-line indent
  set par(leading: 1em, spacing: 1em, justify: true, first-line-indent: 15pt)

  // Hyperlinks: colorlinks, blue
  show link: set text(fill: rgb(0, 0, 255))
  show ref: set text(fill: rgb(0, 0, 255))

  // Articles are roman; Sections are arabic
  set heading(numbering: (..n) => {
    let parts = n.pos()
    if parts.len() == 1 { numbering("I", parts.at(0)) } else if parts.len() == 2 {
      numbering("1", parts.at(1))
    }
  })

  // Cross-references read "Article XI" and "Section 3".
  set heading(supplement: it => if it.depth == 1 { [Article] } else { [Section] })

  // heading level 1 -> Article (unnumber have no label)
  show heading.where(level: 1): it => block(above: 1.7em, below: 0.9em, {
    set text(size: 14.4pt, weight: "bold")
    if it.numbering == none {
      it.body
    } else {
      [Article #counter(heading).display(it.numbering) --#h(0.5em)#it.body]
    }
  })

  // heading level 2 -> Section
  show heading.where(level: 2): it => block(above: 1.3em, below: 0.7em, {
    set text(size: 12pt, weight: "bold")
    if it.numbering == none {
      it.body
    } else {
      [Section #counter(heading).display(it.numbering) --#h(0.5em)#it.body]
    }
  })

  // heading level 3 -> run-in italic lead-in
  show heading.where(level: 3): it => {
    text(style: "italic", weight: "regular", size: 12pt, it.body)
    h(0.5em)
  }

  // Table of contents: label the entries the same way the headings do.
  // The widths must fit the longest label, "Article XIII" and "Section 1".
  show outline.entry: it => {
    let kind = if it.level == 1 { [Article] } else { [Section] }
    let indent = if it.level == 1 { 0em } else { 7.5em }
    let numwidth = if it.level == 1 { 7.5em } else { 5em }
    let leader = if it.level == 1 { h(1fr) } else {
      box(width: 1fr, inset: (x: 0.3em), repeat[.])
    }
    let entry = [#box(width: numwidth)[#kind~#it.prefix()]#it.body()#leader#it.page()]
    block(
      above: if it.level == 1 { 1.6em } else { 0.9em },
      below: 0em,
      pad(left: indent, link(
        it.element.location(),
        if it.level == 1 { strong(entry) } else { entry },
      )),
    )
  }

  // --------------------------------------------

  align(center, {
    text(size: 17.28pt, weight: "bold", title)
    v(0.5em, weak: true)
    text(size: 14.4pt)[Kennesaw State University]
  })

  v(1em)

  outline(title: [Contents], depth: 2)

  v(1em)

  body
}
