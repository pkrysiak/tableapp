#= require ./init
#= require ./base_component

class components.RowComponent extends components.BaseComponent
  constructor: (@animal) ->
    super("table_row_template", "tbody")

  dataToRender: =>
    @animal