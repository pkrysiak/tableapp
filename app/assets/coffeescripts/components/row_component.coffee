#= require ./init
#= require ./base_component

class components.RowComponent extends components.BaseComponent
  constructor: (@animal) ->
    super("table_row_template", "tbody")

  appendMe: =>
    append = $(@targetId).append(@render())
    @me = append.find('tr').last()
    @setElements()
    @setClicks()
    @configure()

  setElements: =>
    @deleteButton = @me.find('button.delete')

  setClicks: =>
    @deleteButton.click =>  @deleteClicked()

  deleteClicked: =>
    @me.remove()

  dataToRender: =>
    @animal