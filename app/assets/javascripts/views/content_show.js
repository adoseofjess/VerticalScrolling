Prototype.Views.ContentShow = Backbone.View.extend({
  template: JST["content/content_show"],
  
  initialize: function (options) {
    this.lesson = options.lesson;
  }, 

  render: function () {
    var renderedContent = this.template( { lesson: this.lesson } )
    this.$el.html(renderedContent);
    return this;
  },
});
