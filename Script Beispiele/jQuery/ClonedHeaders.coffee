window.animate = ->
  window.frameid = requestAnimationFrame ->
    setTimeout animate, 60 / 1000
    $?.event.trigger "frame"

window.stopAnimate = ->
  cancelAnimationFrame window.frameid


$('h2:not(.cloned)').each ->
    $(this).css("opacity",0)
    o = $(this).offset()
    w = $(this).width()
    h = $(this).height()
    
    hasClone = $(this).siblings('.cloned').size() > 0
    copy = if hasClone then $(this).siblings('.cloned') else $(this).clone()
    unless hasClone
        copy.insertBefore(this).addClass 'cloned'
    else
        until $(this).siblings('.cloned').size() == 1
            $(this).siblings('.cloned').last().remove()
    
    copy.css
        opacity: 1
        position: 'absolute'
        top: o.top+"px"
        left: o.left+"px"
        width: w+"px"
        height: h+"px"
    
    copy.off().on "frame", (event) -> 
        t = Math.sin Math.random()*Math.PI+Math.PI/2
        td = if Math.random() > 0.9 then "-" else "+"
        l = Math.sin Math.random()*Math.PI+Math.PI/2
        ld = if Math.random() > 0.9 then "-" else "+"
        $(this).css
            top:  "#{td}=#{t*Math.random()*0.25}px"
            left: "#{ld}=#{l*Math.random()*0.25}px"

animate()
