Prototype.Views.SublessonTitleShow = Backbone.View.extend({
  template: JST["content/sublesson_title_show"],
  
  initialize: function (options) {
    this.sublesson = options.sublesson;
  }, 

  render: function () {
    var renderedContent = this.template( { sublesson: this.sublesson } )
    this.$el.html(renderedContent);
    return this;
  },
});
