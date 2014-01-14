Prototype.Views.LessonTitleShow = Backbone.View.extend({
  template: JST["sidebar/lesson_title_show"],
  
  initialize: function (options) {
    this.course = options.course;
  }, 
  
  events: {
    "click .lesson-title": "showLesson",
    // "click .sublesson-title": "showSublesson",
  },

  render: function () {
    var renderedContent = this.template({ 
      course: this.course, 
      lessons: this.course.lessons(),
    });
    this.$el.html(renderedContent);
    return this;
  },
  
  showLesson: function (event) {
    event.preventDefault();
    var lesson_id = parseInt($(event.currentTarget).attr("data-id"));
    // var sublessonTitleShowView = new Prototype.Views.SublessonTitleShow({
//       sublesson: Prototype.courses.first().lessons().first().sublessons().first(),
//     });
    var contentShowView = new Prototype.Views.ContentShow({
      lesson: Prototype.courses.first().lessons().where({id: lesson_id})[0],
    });
    // $(".sublesson-title-show").html(sublessonTitleShowView.render().$el);
    $(".view").html(contentShowView.render().$el);
  },
  
  // showSublesson: function (event) {
//     event.preventDefault();
//     var sublesson_id = parseInt($(event.currentTarget).attr("data-id"));
//     var sublessonTitleShowView = new Prototype.Views.SublessonTitleShow({
//       sublesson: Prototype.courses.first().lessons().first().sublessons().where({id: sublesson_id})[0],
//     });
//     var contentShowView = new Prototype.Views.ContentShow({
//       sublesson: Prototype.courses.first().lessons().first().sublessons().where({id: sublesson_id})[0],
//     });
//     $(".sublesson-title-show").html(sublessonTitleShowView.render().$el);
//     $(".content-show").html(contentShowView.render().$el);
//   }, 
});
