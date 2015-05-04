`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

ProjectIndexController = Ember.Controller.extend(
  AuthenticatedRouteMixin,
  actions:
    addTask: ->
      task = @store.createRecord "task"
      @get('model').get('tasks').addObject task
      false
)

`export default ProjectIndexController`
