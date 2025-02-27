#let code(lang, body) = {
  block(
    fill: luma(230),
    inset: 8pt,
    radius: 4pt,
    width: 100%,
  )[
    #raw(body.text, lang: lang)
  ]
}
#let pycode(body) = {
  code("python", body)
}

#let annotation(body) = {
  block(
    fill: luma(230),
    inset: 8pt,
    // radius: 4pt,
    width: 100%,
  )[
    #body
  ]
}
