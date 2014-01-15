Prototype.Views.LessonTitleShow = Backbone.View.extend({
  template: JST["sidebar/lesson_title_show"],
  
  initialize: function (options) {
    this.course = options.course;
    // this.listenTo(Prototype.current_user, "add remove change", this.render);
  }, 
  
  events: {
    "click .lesson-title": "showLesson",
    // "click .sublesson-title": "showSublesson",
  },

  render: function () {
    var renderedContent = this.template({ 
      course: this.course, 
      lessons: this.course.lessons(),
      user: Prototype.current_user,
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
    
    if (!Prototype.courses.first().lessons().findWhere({id: lesson_id}).get("locked") == true) {
      var contentShowView = new Prototype.Views.ContentShow({
        lesson: Prototype.courses.first().lessons().findWhere({id: lesson_id}),
      });
      // $(".sublesson-title-show").html(sublessonTitleShowView.render().$el);
      $(".view").html(contentShowView.render().$el);
    } 
    
    
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
