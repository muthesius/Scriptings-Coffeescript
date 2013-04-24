###
  Achtung! Mit Vorsicht zu genießen, da es die Problematik demonstriert,
  die entsteht, wenn Elemente mit Kindern und deren Kinder ge-cloned
  werden.
  ###

window.animate = ->
  window.frameid = requestAnimationFrame ->
    setTimeout animate, 60 / 1000
    $?.event.trigger "frame"

window.stopAnimate = ->
  cancelAnimationFrame window.frameid

glitch = $('<div id="glitch" style="position:abolute;top:0;left:0;"></div>').insertBefore('#wrapper')

$('#wrapper').fadeTo(0)
$('#wrapper *').each ->
  o = $(@).offset()
  w = $(@).width()
  h = $(@).height()
  
  copy = $(@).clone()
  copy.attr 'style', document.defaultView.getComputedStyle(@, null).cssText
  copy.appendTo glitch

  copy.css
    position: 'absolute'
    width: "#{w}px"
    height: "#{h}px"
    top:  "#{o.top}"
    left: "#{o.left}"

  copy.data("oo",$(@).offset())
  
  copy.off("frame").on "frame", (event) -> 
    oo = $(@).data("oo")
    t = oo.top  + Math.sin Math.random()*Math.PI+Math.PI/2
    l = oo.left + Math.sin Math.random()*Math.PI+Math.PI/2
    $(@).css
      top:  "#{t}px"
      left: "#{l}px"
  
