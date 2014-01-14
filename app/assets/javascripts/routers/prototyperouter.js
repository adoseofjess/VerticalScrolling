Prototype.Routers.PrototypeRouter = Backbone.Router.extend({
  initialize: function (domcontent) {
    this.domcontent = domcontent;
  },
  
  routes: {
    "": "index",
    "lesson/:id": "showLesson",
    "sublesson/:id": "showSublesson",
  },
  
  index: function() {
    var sidebarCourseTitleView = new Prototype.Views.CourseTitleShow({
      course: Prototype.courses.first(),
    });
    var sidebarLessonTitleView = new Prototype.Views.LessonTitleShow({
      course: Prototype.courses.first(),
    });
    // var sublessonTitleShowView = new Prototype.Views.SublessonTitleShow({
    //   sublesson: Prototype.courses.first().lessons().first().sublessons().first(),
    // });
    var contentShowView = new Prototype.Views.ContentShow({
      lesson: Prototype.courses.first().lessons().first(),
    });
        $(".course-title-show").append(sidebarCourseTitleView.render().$el);
        $(".lesson-title-show").append(sidebarLessonTitleView.render().$el);
        // $(".sublesson-title-show").append(sublessonTitleShowView.render().$el);
        $(".content-show").append(contentShowView.render().$el);
  },
  
  showLesson: function() {
    
  },
  
  showSublesson: function() {
    
  },
  
  _switchView: function(newView) {
    if (this._prevView) {
            this._prevView.remove();
    }
    this._prevView = newView;
    this.$content.html(newView.render().$el);
  },

  
})