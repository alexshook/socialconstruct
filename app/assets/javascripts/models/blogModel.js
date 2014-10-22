var BlogModel = Backbone.Model.extend({
  urlRoot: '/blogs',
  initialize: function() {
    console.log("hi i'm the blog model");
  }
});
