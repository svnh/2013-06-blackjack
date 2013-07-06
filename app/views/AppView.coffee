class window.AppView extends Backbone.View

  template: _.template '
    <button class="hit-button">Hit</button> <button class="stand-button">Stand</button>
    <div class="player-hand-container"></div>
    <div class="dealer-hand-container"></div>
    <div class="chips-container"></div>
  '

  events:
    "click .hit-button": -> @hit()
    "click .stand-button": -> @stand()

  initialize: -> @render()

  render: ->
    @$el.children().detach()
    @$el.html @template()
    @$('.player-hand-container').html new HandView(collection: @model.get 'playerHand').el
    @$('.dealer-hand-container').html new HandView(collection: @model.get 'dealerHand').el
    @$('.chips-container').html new ChipsView(model: @model.get 'chips').el

  hit: ->
    @model.get('playerHand').hit()
    if @model.get('playerHand').scores()[0] > 21
      alert "bust"
      location.reload()

  stand: ->
    # @model.get('playerHand').stand()
    @model.get('dealerHand').at(0).flip()
    while @model.get('dealerHand').scores()[0] < 17
      @model.get('dealerHand').hit()
      console.log(@model.get('dealerHand').scores())
    if @model.get('dealerHand').scores()[0] > 21 or @model.get('dealerHand').scores()[0] < @model.get('playerHand').scores()[0]
      alert "you win"
    else if @model.get('dealerHand').scores()[0] is @model.get('playerHand').scores()[0]
      alert "you tied"
    else
      alert "you lose"
    location.reload()