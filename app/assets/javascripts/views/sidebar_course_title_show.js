Prototype.Views.CourseTitleShow = Backbone.View.extend({
  template: JST["sidebar/course_title_show"],
  
  initialize: function (options) {
    this.course = options.course;
  }, 

  render: function () {
    var renderedContent = this.template( { course: this.course } )
    this.$el.html(renderedContent);
    return this;
  },
});
