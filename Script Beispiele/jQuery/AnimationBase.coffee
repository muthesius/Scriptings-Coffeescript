window.animate = ->
  window.frameid = requestAnimationFrame ->
    setTimeout animate, 1000 / 60
    $?.event.trigger "frame"

window.stopAnimate = ->
  cancelAnimationFrame window.frameid