#import "../@utils/generic-one-by-two.typ": generic-one-by-two

#let projects-section(
  role: "", name: "", url: "", dates: "", content: []
) = {
  generic-one-by-two(
    left: {
      if role == "" {
        [*#name* #if url != "" and dates != "" [(#link("https://" + url)[#url])]]
      } else {
        [*#role*, #name #if url != "" and dates != "" [(#link("https://" + url)[#url])]]
      }
    },
    right: {
      if dates == "" and url != "" {
        link("https://" + url)[#url]
      } else {
        dates
      }
    }
  )
  parbreak()
  content
  parbreak()
}