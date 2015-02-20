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

  getAnimals: =>
  animalsReceived: (animals) =>
  deleteAnimal:(row) =>

class Gui
  constructor: ->

  configure: =>

  showTable: (animals) =>
    @table = new components.TableComponent(animals)
    @table.appendMe()

class ServerSide

  getAnimals: =>
    $.ajax(
      type: "GET"
      url: "/"
      dataType: "json"
      success: (postsJson) =>
        @animalsReceived(postsJson)
      error: (data) =>
        @animalsLoadingFailure(data)
    )

  animalsReceived: (animals) =>
  animalsReceivingFailure: (data) =>
    console.error data

  deleteAnimal: (animal) =>
    $.ajax(
      type: "DELETE"
      url: "/home/" + animal.id
      dataType: "json"
      success: (postsJson) =>
        @animalDeleted(postsJson)
      error: (data) =>
        @animalsDeletingFailure(data)
    )

  animalDeleted: (response) =>
  animalsDeletingFailure: (data) =>
    console.error data

class Aspect
  constructor: (@usecase, @gui, @server) ->
    After(@usecase, "start",                     => @server.getAnimals())
    After(@server,  "animalsReceived", (animals) => @usecase.animalsReceived(animals))
    After(@usecase, "animalsReceived", (animals) => @gui.showTable(animals))
    After(@gui,     "showTable",                 => @intializeButtons())
    After(@usecase, "deleteAnimal",        (row) => @server.deleteAnimal(row.animal))

  intializeButtons: =>
    for row in @gui.table.rowComponents
      do (row) =>
        After(row, "deleteClicked", => @usecase.deleteAnimal(row))

$ ->
  aplication = new TableApp
  aplication.start()