`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

ProjectsIndexRoute = Ember.Route.extend(
  AuthenticatedRouteMixin,
  model: ->
    @store.find('project')
)

`export default ProjectsIndexRoute`
