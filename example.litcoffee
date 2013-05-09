Meteor Model Conjecture
=============
    collection['example'] = new Meteor.Collection 'example'

Example Model
--------------
    class @Model
      constructor: (name, user, fields) ->
        @userId = user._id
        self = @
        _populate = () ->
          keys = _.keys fields
          _.each keys, (key) ->
            self[key] = fields[key]

        @date = new Date()

        Meteor.methods @invocation()

      invocation: () ->
        method = {}
        methodName = 'CRUD'+name
        method[methodName] = (args) ->
          user = Meteor.user()

          create = () ->
            collection[name].insert @.toMONGO()

        method
      
       toMONGO: () ->

