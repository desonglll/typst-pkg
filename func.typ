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

#let main_title(title: "Hola", size: 34pt) = {
  let title = text(size: size, weight: "bold", title)
  title
}


#let title_page(title, author, date: datetime.today(), subtitle: "") = {
  let title = main_title(title: title, size: 34pt)

  page()[
    #block(width: 100%)[
      #v(30pt)
      #align(center)[
        #title
      ]
    ]

    #block(height: 500pt, width: 100%)[
      #v(30pt)
      #align(center)[
        #subtitle
      ]
    ]

    #block(width: 100%)[
      #align(center + bottom)[
        #author

        #datetime.display(date, "[month repr:short] [day], [year]")
      ]
    ]
  ]
}
