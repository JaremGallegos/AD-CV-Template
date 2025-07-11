#import "@preview/scienceicons:0.1.0": orcid-icon

#let resume(
  author: "", author-position: center, personal-info-position: center, pronouns: "",
  location: "", email: "", github: "", linkedin: "", phone: "", personal-site: "",
  orcid: "", accent-color: "#000000", font: "Carlito", paper: "us-letter",
  author-font-size: 20pt, font-size: 10pt, body
) = {
  set document(author: author, title: author)
  /// La opción de ligatures, se debe desabilitar para sistemas ATS
  set text(font: font, size: font-size, lang: "es", ligatures: false)
  set page(margin: (0.5in), paper: paper)
  
  /// Estilo de Enlace
  show link: underline
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]
  show heading: set text(fill: rgb(accent-color))
  show link: set text(fill: rgb(accent-color))
  show heading.where(level: 1): it => [
    #set align(author-position)
    #set text(weight: 700, size: author-font-size)
    #pad(it.body)
  ]

  /// Encabezado de CV y Contacto Personal
  [= #(author)]
  let contact-info(value, prefix: "", link-type: "") = {
    if value != "" {
      if link-type != "" {
        link(link-type + value)[#(prefix + value)]
      } else {
        value
      }
    }
  }

  pad(top: 0.25em, align(personal-info-position)[
    #{
      let items = (
        contact-info(pronouns),
        contact-info(location),
        contact-info(linkedin, link-type: "https://"),
        contact-info(phone),
        contact-info(email, link-type: "mailto:")
      )
      items.filter(x => x != none).join(" • ")
    }
  ])

  /// Cuerpo CV Resumen
  set par(justify: true)
  body
}

