#import "swat-config.typ": _check_shared_label, _config, _heading_config, _parent_heading, _show_heading_ref

// Shorthand for club name throughout the documents
#let org = [Software Acceleration Team]
#let orgshort = [SwAT]

// Shared labels for cross-references between documents
//
// *MUST* be defined here, and will be checked (if they exist) to match against
// the correct value in the relevant document. adding a label that does not exist
// here will NOT raise an error, so this should still be checked carefully
#let _shared_labels = (
  "bylaws": (
    "sec-good-standing": (2, 1),
  ),
  "constitution": (
    "sec-active-membership": (4, 2),
    "art-ip": (11,),
    "art-bylaws": (14,),
  ),
)

// Create a cross-reference between the two documents
#let cross-ref(doc, name) = _show_heading_ref(_shared_labels.at(doc).at(name))

// List styles for (a) sub-levels
#let alphalist(it) = {
  set enum(
    .._config.alphalist,
  )
  it
}

// List styles for (i) sub-levels
#let romanlist(it) = {
  set enum(.._config.romanlist)
  it
}

// Cross-reference: the number alone, with no "Article"/"Section" prefix.
#let num(it) = {
  set ref(supplement: none)
  it
}

#let governing-doc(title: none, body) = {
  // TODO: more document metadata
  set document(title: title)

  set page(.._config.page)
  set text(.._config.text)
  set par(.._config.par)

  show link: set text(.._config.link)

  show enum: set block(above: 2em)

  set terms(.._config.terms)

  set heading(
    supplement: it => _heading_config(it.depth, map: c => c.supplement),
    numbering: (..n) => _heading_config(n.len(), map: c => c.numbering)(n.pos().last()),
  )

  show heading: it => {
    let config = _heading_config(it.level)

    (config.container)(..config.params, {
      set text(..config.text)

      if it.supplement != [] {
        let n = counter(heading).display()

        [#config.supplement #n  -- #it.body ]
      } else {
        it.body
      }
    })
  }

  show ref: it => {
    let el = it.element

    if el.func() == heading {
      let loc = el.location()

      _show_heading_ref(
        counter(heading).at(loc),
        num: (n, i) => context {
          link(
            _parent_heading(loc, i).location(),
            n,
          )
        },
      )
    } else {
      it
    }
  }

  show outline: set heading(supplement: none)

  show outline.entry: it => {
    let (indent, numwidth, leader) = if it.level == 1 { _config.outline.toplevel } else { _config.outline.rest }

    let entry = {
      let kind = it.element.supplement

      box(width: numwidth)[#kind~#it.prefix()]
      it.body()

      set text(fill: black)

      leader
      h(1.5em)
      it.page()
    }

    block(
      above: if it.level == 1 { 2.5em } else { 0.9em },
      pad(left: indent, link(
        it.element.location(),
        if it.level == 1 { strong(entry) } else { entry },
      )),
    )
  }

  align(center, {
    text(.._config.title, title)
    linebreak()
    text(.._config.subtitle)[Kennesaw State University]
  })

  v(1em)

  outline(title: text(size: 1.1em)[Contents], depth: 2)

  v(2em)

  body

  for (_, lab, nums) in _shared_labels.pairs().map(((d, l)) => l.pairs().map(((l, v)) => (d, l, v))).sum() {
    _check_shared_label(lab, nums)
  }
}
