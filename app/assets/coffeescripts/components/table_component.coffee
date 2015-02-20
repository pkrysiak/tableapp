#= require ./init
#= require ./base_component

class components.TableComponent extends components.BaseComponent
  constructor: (@animals) ->
    super("table_template", ".panel-body")
    @rowComponents = []

  configure: =>
    for animal in @animals
      row = new components.RowComponent(animal)
      row.appendMe()
      @rowComponents.push row

  dataToRender: =>