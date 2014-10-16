$().ready(function() {
  console.log('loaded bro');
  var categoriesAppRouter = new CategoriesRouter();
  Backbone.history.start();
});
