`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

ProjectsNewController = Ember.Controller.extend(
  AuthenticatedRouteMixin,
  actions:
    createNewProject: ->
      project = @store.createRecord "project",
        "name": @get("name")
        "description": @get("description")
      project.save()
      false
)

`export default ProjectsNewController`
