#import "../@utils/generic-two-by-two.typ": generic-two-by-two

#let education-section(
  institution: "", dates: "", degree: "", location: "", consistent: false, content: []
) = {
  if consistent {
    generic-two-by-two(
      top-left: strong(institution),
      top-right: dates,
      bottom-left: emph(degree),
      bottom-right: emph(location)
    )
  } else {
    generic-two-by-two(
      top-left: strong(institution),
      top-right: location,
      bottom-left: emph(degree),
      bottom-right: emph(dates)
    )
    parbreak()
  }

  content
  parbreak()
}