`import Ember from 'ember'`

ModelSaveController = Ember.Mixin.create(
  actions:
    save: ->
      @get('model').save()
      false
)

`export default ModelSaveController`
