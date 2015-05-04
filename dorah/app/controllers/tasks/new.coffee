`import Ember from 'ember'`
`import ModelSaveControllerMixin from 'dorah/mixins/model-save-controller'`
`import TaskSaveControllerMixin from 'dorah/mixins/task-save-controller'`

TasksNewController = Ember.Controller.extend(
  ModelSaveControllerMixin,
  TaskSaveControllerMixin
)

`export default TasksNewController`
