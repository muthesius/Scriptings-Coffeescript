answer = no
wait = () ->
trash = []
infected = no
$ = () -> move: ()->

###
  The true true
###

true is not false
true isnt false
yes isnt off

yes and no is not true


console.log "I knew it!" if elvis?


fill = (container, liquid = "coffee") ->
  "Filling the #{container} with #{liquid}..."


num = 6
lyrics = while num -= 1
  "#{num} little monkeys, jumping on the bed.
    One fell out and bumped his head."


do smile if answer is yes

do wait unless answer isnt no

throwAway item for item in trash when item isnt lost_item

do move element for element in infected when element.hasClass 'mover'

# jQuery geht auch
do $('mover').move

###
  Wat?
###
console.log Array(16).join("wat" - 1) + " Batman!"


###
  Simple Rap
###

tired = false
rhymes = 0

rap = ->
  next = Math.floor(Math.random()*3,0)
  console.log ["Yeah!","Uh..","A!","Common!"][next]
  tired = true if rhymes++ > 10

console.log "Next up a simple rap:"
rap() until tired




###
  Advanced Rap
###

tired = false

rap = ->
  @rhymes = 0 unless @rhymes?
  next = Math.floor(Math.random()*3,0)
  console.log ["Yeah!","Uh..","A!","Common!"][next]
  tired = true if @rhymes++ > 10

console.log "Jay-Z in da house!"
rap() until tired




###
  Super Advanced Rap
###

class Rapper
    skillz: 1

    constructor: (@rhymes) ->
      do @huzzle

    huzzle: () ->
      @thightness = @rhymes.length * @skillz
      @blown = null
      return @

    think: () ->
      @next = Math.floor(Math.random()*@rhymes.length,0)
      @thightness--
      @blown = yes if @thightness < 0

    shout: () ->
      console.log @rhymes[@next]

    rhyme: ->
      @think()
      @shout()

    rap: ->
      return unless @rhymes instanceof Array
      do @rhyme until !mind? is @blown?


class WestCoastRapper extends Rapper
  skillz: 5

class EastCoastRapper extends Rapper
  skillz: 2


snoopDog = new WestCoastRapper [
  "All the ladies"
  "Put jo hands in the air"
  "Yeah!"
  "C'mon"
]

fiftyCent = new EastCoastRapper [
  "mmm.."
  "All my homies, get down!"
  "Yeah!"
  "C'mon"
]

snoopDog.rap()
fiftyCent.rap()

## Oder auch:
rappers = [snoopDog.huzzle(),fiftyCent.huzzle()]

rapper.rap() for rapper in rappers

rapper.rap() for rapper in rappers when rapper.skillz > 3

