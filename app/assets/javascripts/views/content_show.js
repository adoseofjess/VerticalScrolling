Prototype.Views.ContentShow = Backbone.View.extend({
  template: JST["content/content_show"],
  
  initialize: function (options) {
    this.$el = $("<div class=\"content-show\"></div>") 
    this.lesson = options.lesson;  
  }, 
  
  events: {
    "submit .quiz-form": "checkQuiz",
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
    console.log("checking quiz")
    var answers = [];
    $('input:checked').each(function(input) {answers.push($(this).val())})
    var passedQuiz = true; 
    for (var i = 0; i < answers.length; i++) {
      if (answers[i] == "false") {
        passedQuiz = false;
      }
    }
    if (passedQuiz) {
      console.log("passed quiz")
      var nextLesson = Prototype.courses.first().lessons().findWhere({id: (this.lesson.id + 1)})
      // if the next lesson is locked, update the user's current_lesson_id
      if (nextLesson.get("locked") == true) {
        console.log(Prototype.current_user.get("current_lesson_id"))
        Prototype.current_user.save({current_lesson_id: nextLesson.id.toString()})
        
        Prototype.current_user.trigger("lessonUnlocked");
        
        console.log(Prototype.current_user.get("current_lesson_id"))
        this.addNextLesson();
      }
      // else just add the next lesson
      else {
        this.addNextLesson();
      }
    }
  },
  
  checkScroll: function(event) {
   
    if ($(event.currentTarget).scrollTop() >= ($(event.currentTarget)[0].scrollHeight - $(document).height())){
      if (Prototype.courses.first().lessons().findWhere({id: (this.lesson.id + 1)})) {
          this.addNextLesson();
      }
    }
  }, 
  
  addNextLesson: function() {    
    var nextLesson = Prototype.courses.first().lessons().findWhere({id: (this.lesson.id + 1)}) 
    // if the next lesson isn't locked, display it on the page 
    if (!nextLesson.get("locked")) {
      this.lesson = nextLesson;
      var nextLessonView = this.template({
        lesson: this.lesson
      })
      
      $(".content-show").append(nextLessonView);
    }
    // if locked, check if the next lesson is in user's list of completed courses
    else {
      if (parseInt(Prototype.current_user.get("current_lesson_id")) >= nextLesson.id) {
        this.lesson = nextLesson;
        var nextLessonView = this.template({
          lesson: this.lesson
        })
      
        $(".content-show").append(nextLessonView);
      } 
    }
  }
});
