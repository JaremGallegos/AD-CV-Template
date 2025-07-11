#let certificates(
  name: "", issuer: "", url: "", date: "", skills: ""
) = {
  [
    *#name*, #emph(issuer)
    #if url != "" {
      [(#link("https://www.credly.com/badges/" + url)[#url])]
    } |
    #skills
    #h(1fr) #date
  ]
}