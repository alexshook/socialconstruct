var CategoriesRouter = Backbone.Router.extend({
  initialize: function() {
    this.postModel = new PostModel();
    this.categoryModel = new CategoryModel();
  }
})

// var PhotoRouter = Backbone.Router.extend({
//   initialize: function() {
//     this.streamingView = new StreamingView({ el: $("#index") });
//     this.photoModel = new PhotoModel();
//     this.userModel = new UserModel();
//     this.userCollection = new UserCollection({model: this.userModel});
//     this.userList = new UserList({collection: this.userCollection});
//   },
//   routes: {
//     'user': 'index',
//     'users/:id': 'showUser'
//   },
//   index: function() {
//     this.userCollection.fetch({reset: true, wait: true});
//   },
//   showUser: function(id) {
//     this.userCollection.fetch({success: function() {
//       this.userList.filter(id);
//     }.bind(this)})
//   }
// });
