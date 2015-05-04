`import DS from 'ember-data'`

Task = DS.Model.extend {
  description: DS.attr('string')
  levelOfEffot: DS.attr('number')
  priority: DS.attr('number')
  fruitHangHeight: DS.attr('number')

  project: DS.belongsTo('project', async: true)

  assignees: DS.hasMany('user', async: true)
}

`export default Task`
