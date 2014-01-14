Prototype.Views.ContentShow = Backbone.View.extend({
  template: JST["content/content_show"],
  
  initialize: function (options) {
    this.$el = $("<div class=\"content-show\"></div>") 
    this.lesson = options.lesson;  
  }, 
  
  events: {
    "submit form": "checkQuiz",
    "scroll": "checkScroll",
  },

  render: function () {
    var renderedContent = this.template( { 
      lesson: this.lesson,
     } )
 
    this.$el.html(renderedContent);
    return this;
  },
  
  checkQuiz: function(event) {
    event.preventDefault();
    // add later
  },
  
  checkScroll: function(event) {
    console.log("check scroll")
    
    if ($(event.currentTarget).scrollTop() >= ($(event.currentTarget)[0].scrollHeight - $(document).height())){
      console.log($(event.currentTarget).scrollTop())
      this.addNextLesson();
    }
  }, 
  
  addNextLesson: function() {    
    // var nextLessonView = new Prototype.Views.ContentShow({
    //   lesson: Prototype.courses.first().lessons().findWhere({id: (this.lesson.id + 1)})
    // });
    console.log("add next lesson")
    this.lesson = Prototype.courses.first().lessons().findWhere({id: (this.lesson.id + 1)}) 
    var nextLesson = this.template({
      lesson: this.lesson
    })
    $(".content-show").append(nextLesson);
    
    
  }
});
