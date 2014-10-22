var PostModel = Backbone.Model.extend({
  urlRoot: '/posts',
  defaults: {
    img_url: 'http://placekitten.com/300/300'
  },
  initialize: function() {
    console.log("hi i'm the photo model");
  }
});
