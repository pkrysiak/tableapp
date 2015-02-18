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
  constructor: ->
    animals = [
      {id: 1, name: "Psalmopoeus Irminia", sex: "male", multiplication: true, bodyLenght: 5, molt: 12, buyDate: "2013-01-01", status: true},
      {id: 2, name: "Avicularia Versicolor", sex: "female", multiplication: false, bodyLenght: 3, molt: 8, buyDate: "2010-10-21", status: false}
    ]
    @table = new components.TableComponent(animals)

  configure: =>

  showTable: =>
    @table.appendMe()

class ServerSide

class Aspect
  constructor: (@usecase, @gui, @server) ->
    After(@usecase, "start", => @gui.showTable())


$ ->
  aplication = new TableApp
  aplication.start()