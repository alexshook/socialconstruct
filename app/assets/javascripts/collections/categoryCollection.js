var CategoryCollection = Backbone.Collection.extend({
  url: '/categories',
  model: CategoryModel
});
