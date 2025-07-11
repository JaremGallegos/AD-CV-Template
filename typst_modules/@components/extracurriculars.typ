#import "../@utils/generic-one-by-two.typ": generic-one-by-two

#let extracurriculars-section(
  activity: "", dates: ""
) = {
  generic-one-by-two(
    left: strong(activity),
    right: dates
  )
}