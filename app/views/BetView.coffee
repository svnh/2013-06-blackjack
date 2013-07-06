class window.ChipsView extends Backbone.View

  className: 'chips'

  template: _.template '<h2><span class="chips"></span></h2>
    <form name="input" method="get"> <input type="text" class ="binput" name="bet">
      <input type="button" class = "bet" value="Bet">
    </form>'

  events:
    "click .bet": -> @model.set('bet', $('.binput').val())

  initialize: ->
     @model.on 'add remove change', => @render()
     @render()

  render: ->
    @$el.html @template @model
    @$el.append @$('.chips').text('Chips: ' + @model.get('chips') + '---Bet: ' + @model.get('bet'))


