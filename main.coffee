class Person extends Backbone.Model
  defaults:
    name: 'John Doe'
    occupation: 'Worker'

class PersonView extends Backbone.View
  initialize: ->
    @model.on 'yoyoyo', @sayHi
  sayHi: =>
    console.log 'Yo yo yo'

person = new Person name: 'Ferdi Ramdhon'
personView = new PersonView model: person

person.trigger 'yoyoyo'