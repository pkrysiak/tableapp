#= require ./init
#= require ./base_component

class components.TableComponent extends components.BaseComponent
  constructor: ->
    super("table_template", ".panel-body")

  configure: =>

  dataToRender: =>