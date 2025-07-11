#let generic-two-by-two(
  top-left: "", top-right: "", bottom-left: "", bottom-right: ""
) = {
  [
    #top-left #h(1fr) #top-right \
    #bottom-left #h(1fr) #bottom-right
  ]
}