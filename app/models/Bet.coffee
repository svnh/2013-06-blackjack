class window.Chips extends Backbone.Model

  initialize: ->
    @set 'chips', 100
    @set 'bet', 0

  win: ->
    #set chips to chips + bet

  lose: ->
    #set chips to chips - bet
