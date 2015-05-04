`import Ember from 'ember'`
`import TaskSaveControllerMixin from 'dorah/mixins/task-save-controller'`

TasksNewController = Ember.Controller.extend(
  TaskSaveControllerMixin,
  actions:
    createNewTask: ->
      task = @store.createRecord "task",
        "name": @get("name")
        "description": @get("description")
      task.save()
      false
)

`export default TasksNewController`
