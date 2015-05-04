`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

ProjectsNewRoute = Ember.Route.extend(
  AuthenticatedRouteMixin,
  model: ->
    @store.createRecord "project"
)

`export default ProjectsNewRoute`
