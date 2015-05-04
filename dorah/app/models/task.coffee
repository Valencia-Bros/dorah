`import DS from 'ember-data'`

Task = DS.Model.extend {
  name: DS.attr('string')
  project: DS.belongsTo('project')

  assignees: DS.hasMany('assignee')
}

`export default Task`
