`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

ProjectEditController = Ember.Controller.extend(
  AuthenticatedRouteMixin,
  actions:
    save: ->
      model.save()
      false
)

`export default ProjectEditController`
