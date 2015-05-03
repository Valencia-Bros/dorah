`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

TasksRoute = Ember.Route.extend(AuthenticatedRouteMixin)

`export default TasksRoute`
