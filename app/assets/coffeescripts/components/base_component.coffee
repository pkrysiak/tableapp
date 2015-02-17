#= require ./init
#= require handlebars

class components.BaseComponent
  constructor: (@sourceTemplateId, @targetId) ->

  appendMe: =>
    @me = $(@targetId).append(@render())
    @setElements()
    @setClicks()
    @configure()

  setElements: =>

  setClicks: =>

  configure: =>

  render: =>
    HandlebarsTemplates["#{@sourceTemplateId}"](@dataToRender())

  dataToRender: =>
    console.error("you must redefine this method in child class when you inherit from BaseComponent class")