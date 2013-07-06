class window.Chips extends Backbone.Model

  initialize: ->
    @set 'chips', 100
    @set 'bet', 0

  win: ->
    @chips += @bet
    #set chips to chips + bet

  lose: ->
    @chips -= @bet
    #set chips to chips - bet
