var CategoriesRouter = Backbone.Router.extend({
  initialize: function() {
    this.postModel = new PostModel();
    this.categoryModel = new CategoryModel();
  },
  routes: {
    'categories': 'index',
    'categories/:id': 'showCategory'
  },
  index: function() {
    this.categoryCollection.fetch({reset: true, wait: true});
  },
  showCategory: function(id) {
  }
});
