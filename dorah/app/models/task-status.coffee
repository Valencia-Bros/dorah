`import DS from 'ember-data'`

TaskStatus = DS.Model.extend {
  name: DS.attr('string')

  project: DS.belongsTo('project', async: true)
}

`export default TaskStatus`
