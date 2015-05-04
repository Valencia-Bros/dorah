`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

TasksNewController = Ember.Controller.extend(
  AuthenticatedRouteMixin,
  actions:
    createNewTask: ->
      task = @store.createRecord "task",
        "name": @get("name")
        "description": @get("description")
      task.save()
      false
)

`export default TasksNewController`
