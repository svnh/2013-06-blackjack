class window.Chips extends Backbone.Model

  initialize: ->
    @set 'chips', parseInt(localStorage.getItem('chips')) or 100
    @set 'bet', 0

  win: =>
    temp = parseInt(this.get('chips'))
    this.set 'chips', temp += parseInt(this.get('bet'))
    localStorage.setItem('chips', parseInt(this.get('chips')))

  lose: =>
    temp = parseInt(this.get('chips'))
    this.set 'chips', temp -= parseInt(this.get('bet'))
    localStorage.setItem('chips', parseInt(this.get('chips')))
