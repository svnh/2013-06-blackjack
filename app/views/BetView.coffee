class window.ChipsView extends Backbone.View

  className: 'chips'

  template: _.template '<h2><span class="chips"></span></h2>
    <form name="input" method="get"> <input type="text" name="bet">
      <input type="submit" class = "bet" value="Bet">
    </form>'

  events:
    "click .bet": -> @model.set('bet', 3) #do not reset page and set bet to input

  initialize: ->
     @model.on 'add remove change', => @render()
     @render()

  render: ->
    @$el.html @template @model
    @$el.append @$('.chips').text('Chips: ' + @model.get('chips') + '---Bet: ' + @model.get('bet'))


