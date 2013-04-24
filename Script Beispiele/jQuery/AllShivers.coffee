window.animate = ->
  window.frameid = requestAnimationFrame ->
    setTimeout animate, 60 / 1000
    $?.event.trigger "frame"

window.stopAnimate = ->
  cancelAnimationFrame window.frameid

   
$('#wrapper *').each ->
  return if $(@).hasClass('cloned') or $(@).css('position') is "absolute"

  o = $(@).offset()
  w = $(@).width()
  h = $(@).height()

  copy = $(@)
  copy = $(@).clone()
  copy.insertBefore(@).addClass 'cloned'

  copy.css
    position: 'absolute'
    width: "#{w}px"
    height: "#{h}px"
    top:  "#{o.top}"
    left: "#{o.left}"

  copy.data("oo",$(@).offset())

  copy.data "oo",
    top:  parseInt $(@).css('padding-top' ),10
    left: parseInt $(@).css('padding-left'),10
    width: $(@).width()
    height: $(@).height()
  
  copy.off("frame").on "frame", (event) -> 
    oo = $(@).data("oo")
    v = Math.sin Math.random()*Math.PI+Math.PI/2
    h = Math.sin Math.random()*Math.PI+Math.PI/2
    $(@).css
      'padding-top':  "#{oo.top+v}px"
      'padding-left': "#{oo.left+h}px"
      'width':  "#{oo.width+v*-4}px"
      'height':  "#{oo.height+h*-4}px"

  
