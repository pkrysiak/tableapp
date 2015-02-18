#= require ./init
#= require ./base_component

class components.TableComponent extends components.BaseComponent
  constructor: (@animals) ->
    super("table_template", ".panel-body")

  configure: =>
    for animal in @animals
      a = new components.RowComponent(animal)
      a.appendMe()

  dataToRender: =>