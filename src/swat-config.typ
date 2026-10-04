#let _config = (
  page: (
    paper: "us-letter",
    margin: 2.5cm,
    numbering: "1",
    number-align: center,
  ),

  title: (
    size: 1.72em,
    weight: "bold",
  ),

  subtitle: (
    size: 1.2em,
  ),

  text: (
    font: "New Computer Modern",
    size: 12pt,
    lang: "en",
  ),

  par: (
    leading: 1.13em,
    spacing: 1em,
    justify: true,
    first-line-indent: 1.25em,
  ),

  link: (
    fill: rgb(0, 0, 100%),
  ),

  terms: (
    hanging-indent: 0em,
    separator: [. ],
  ),

  heading: (
    (
      // level 1
      supplement: [Article],
      numbering: n => numbering("I", n),
      container: block,
      params: (above: 1.8em, below: 1.5em),
      text: (size: 14.4pt, weight: "bold"),
    ),
    (
      // level 2
      supplement: [Section],
      numbering: n => numbering("1", n),
      container: block,
      params: (above: 1.9em, below: 1.7em),
      text: (size: 12pt, weight: "bold"),
    ),
    (
      // level 3
      supplement: none,
      numbering: n => none,
      container: it => box(it) + h(0.5em),
      params: (),
      text: (size: 1em, weight: "regular", style: "italic"),
    ),
    (
      // rest
      supplement: none,
      numbering: none,
      container: box,
      params: (),
      text: (),
    ),
  ),

  alphalist: (
    numbering: "a.",
    indent: 0.66em,
    body-indent: 0.5em,
    spacing: 1.65em,
  ),

  romanlist: (
    numbering: "i.",
    indent: 1.46em,
    body-indent: 0.85em,
    spacing: 2em,
  ),

  outline: (
    toplevel: (
      indent: 0em,
      numwidth: 7.5em,
      leader: h(1fr),
    ),
    rest: (
      indent: 7.5em,
      numwidth: 5em,
      leader: box(
        width: 1fr,
        inset: (x: 0.3em),
        repeat(gap: 0.5em)[.],
      ),
    ),
  ),
)

// fetchs the relevant heading config for depth `n`
#let _heading_config(n, map: c => c) = {
  _config.heading.map(map).at(calc.min(n - 1, _config.len()))
}

#let _show_heading_ref(nums, num: (n, i) => n) = {
  let sup(i) = _heading_config(i, map: c => c.supplement)

  let nnum(i) = num(
    _heading_config(i, map: c => c.numbering)(nums.at(i - 1)),
    i,
  )

  return range(1, nums.len(), inclusive: true).map(i => [#sup(i) #nnum(i)]).join([, ])
}

#let _parent_heading(loc, level) = query(selector(heading).before(loc)).rev().find(h => h.level == level)

#let _check_shared_label(name, nums) = context {
  let matches = query(label(name))

  if matches.len() == 0 {
    return
  }

  let it = matches.first()

  assert(it.level == nums.len())

  for (i, n) in nums.enumerate() {
    let parent = _parent_heading(it.location(), i + 1)

    let value = counter(heading).at(parent.location()).at(i)

    assert(
      value == n,
      message: name + ": mismatch [level " + str(i + 1) + "] - actual: " + str(value) + ", got " + str(n),
    )
  }
}

