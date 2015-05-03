`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend
  actions:
    invalidateSession: ->
      @get('session').invalidate()

`export default ApplicationController`
