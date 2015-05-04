`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

TasksIndexRoute = Ember.Route.extend(
  AuthenticatedRouteMixin,
  model: ->
    @store.find('task')
)

`export default TasksIndexRoute`
