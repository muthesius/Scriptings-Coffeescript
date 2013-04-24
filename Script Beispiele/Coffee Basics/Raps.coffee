###
  My first Rap
###
tired = no

rap = (rapper) ->
  @tightness = rapper.length*2 unless @tightness?
  
  which = Math.floor Math.random()*rapper.length
  rhyme = rapper[which]

  console.log rhyme

  @tightness--
  tired = yes if @tightness <= 0


# Rap:

jayZ = [
  "A!", "All da people in da house"
  "All my ladies", "C'mon", "Yeah!"
  "Aha!"
]

# console.log "Jay-Z in da house!"
# rap jayZ until tired



class Rapper
  skillz: 1

  constructor: (@name, @rhymes) ->
    @tightness = @rhymes.length*@skillz
    console.log @tightness
    @tired = no
    
  chooseRhyme: ->
    which = Math.floor Math.random()*@rhymes.length
    @rhymes[which]

  shout: (rhyme) ->
    console.log rhyme

  rhyme: ->
    rhyme = @chooseRhyme()
    @shout(rhyme)
    @tightness--
    @tired = yes if @tightness <= 0

  rap: () ->
    console.log "#{@name} in da house!"
    do @rhyme until @tired if @tightness?



class WestcoastRapper extends Rapper
  skillz: 5
  
class EastcoastRapper extends Rapper
  skillz: 2
  


snoopDog = new WestcoastRapper "Snoop Dog",[
  "A!", "All da people in da house"
  "Westcost", "C'mon", "Yeah!"
  "Aha!"
]

fiftyCent = new EastcoastRapper "Fifty Cent",[
  "All my money!", "All da people in da house"
  "Put yo hands in the air!", "C'mon",
  "Yo!"
]


snoopDog.rap()
fiftyCent.rap()






