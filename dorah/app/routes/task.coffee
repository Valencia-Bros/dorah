`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

TaskRoute = Ember.Route.extend(AuthenticatedRouteMixin)

`export default TaskRoute`
