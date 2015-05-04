`import Ember from 'ember'`
`import TaskSaveControllerMixin from '../../../mixins/task-save-controller'`
`import { module, test } from 'qunit'`

module 'TaskSaveControllerMixin'

# Replace this with your real tests.
test 'it works', (assert) ->
  TaskSaveControllerObject = Ember.Object.extend TaskSaveControllerMixin
  subject = TaskSaveControllerObject.create()
  assert.ok subject
