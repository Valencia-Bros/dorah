`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

ProjectsNewController = Ember.Controller.extend(
  AuthenticatedRouteMixin,
  actions:
    deleteTaskStatus: (taskStatus) ->
      taskStatus.destroyRecord()
      false
    newTaskStatus: (project) ->
      taskStatus = @store.createRecord "taskStatus"
      project.get('taskStatuses').addObject taskStatus
      false
    save: ->
      @model.save()
      false
)

`export default ProjectsNewController`
