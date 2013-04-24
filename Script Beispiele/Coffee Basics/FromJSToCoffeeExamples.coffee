###
	Some examples form JS to Coffeee
###

keyMoves =
    37: 'pan_left'
    38: 'pan_up'
    39: 'pan_right'
    40: 'pan_down'
    187: 'zoom_in'
    189: 'zoom_out'

document.onkeydown = ( event ) ->
    move = keyMoves[event.keyCode]
    piece[move]() for piece in game_pieces
    the_screen.refresh( game_pieces )


 # var keyMoves;
 # keyMoves = {
 #      37: 'pan_left',
 #      38: 'pan_up',
 #      39: 'pan_right',
 #      40: 'pan_down',
 #      187: 'zoom_in',
 #      189: 'zoom_out'
 # };
 # document.onkeydown = function(event) {
 #      var move, piece, _i, _len;
 #      move = keyMoves[event.keyCode];
 #      for (_i = 0, _len = game_pieces.length; _i < _len; _i++) {
 #           piece = game_pieces[_i];
 #           piece[move]();
 #      }
 #      return the_screen.refresh(game_pieces);
 # };


###
	Class Example – der Klassiker: Person
###

class Person
	setName: (@name) ->
	constructor: (@name) ->

j = new Person("Jay")
console.log j.name

j.name = "Thomas" # I can set the value as well

console.log j.name



# function Person(name) {
#  this._name = name;   
# }
# Person.prototype.name = function(name) {
#   if (name) this._name = name;
#   return this._name;
# }
# var j = new Person("Jay");
# console.log(j.name()) // "Jay"
# j.name("Thomas"); // I can set the value as well
# console.log(j.name()) // "Thomas"

