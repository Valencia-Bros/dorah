`import DS from 'ember-data'`

Task = DS.Model.extend {
  description: DS.attr('string')

  project: DS.belongsTo('project', async: true)

  assignees: DS.hasMany('user', async: true)
}

`export default Task`
