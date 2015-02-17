#= require utils

class TableApp
  constructor: ->
    @useCase    = new UseCase()
    @gui        = new Gui()
    @serverSide = new ServerSide()
    @aspect     = new Aspect(@useCase, @gui, @serverSide)

    return @

  start: =>
    @useCase.start()
    @gui.configure()

class UseCase
  start: =>

class Gui
  configure: =>
    @table = new components.TableComponent()
    @table.appendMe()

class ServerSide

class Aspect
  constructor: (@usecase, @gui, @server) ->


$ ->
  aplication = new TableApp
  aplication.start()