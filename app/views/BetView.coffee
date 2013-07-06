class window.ChipsView extends Backbone.View

  className: 'chips'

  template: _.template '<h2><span class="chips"></span></h2>'

  initialize: ->
     # @collection.on 'add remove change', => @render()
     @render()

  render: ->
    @$el.html @template @model
    @$el.append @$('.chips').text('Chips: ' + @model.get('chips'))



