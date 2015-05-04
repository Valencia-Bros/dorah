`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

TasksNewRoute = Ember.Route.extend(
  AuthenticatedRouteMixin,
  model: ->
    @store.createRecord "task"
)

`export default TasksNewRoute`
