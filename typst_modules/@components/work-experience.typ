#import "../@utils/generic-two-by-two.typ": generic-two-by-two

#let work-experience-section(
  title: "", dates: "", company: "", location: ""
) = {
  generic-two-by-two(
    top-left: strong(title),
    bottom-right: emph(location),
    top-right: dates,
    bottom-left: company,
  )
}