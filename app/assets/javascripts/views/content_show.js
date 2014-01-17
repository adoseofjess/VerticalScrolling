Prototype.Views.ContentShow = Backbone.View.extend({
  template: JST["content/content_show"],
  
  initialize: function (options) {
    this.$el = $("<div class=\"content-show\"></div>") 
    this.lesson = options.lesson; 
    this.listenTo(Prototype.current_user, "lessonUnlocked", this.render);
  }, 
  
  events: {
    "submit .quiz-form": "checkQuiz",
    "scroll": "checkScroll",
  },

  render: function () {
    var renderedContent = this.template( { 
      lesson: this.lesson,
     })
 
    this.$el.html(renderedContent);
    return this;
  },
  
  checkQuiz: function(event) {
    event.preventDefault();
    
    var answers = [];
    $('input:checked').each(function(input) {answers.push($(this).val())})
    var passedQuiz = true; 
    for (var i = 0; i < answers.length; i++) {
      if (answers[i] == "false") {
        passedQuiz = false;
      }
    }
    
    if ((parseInt(Prototype.current_user.get("last_solved_quiz")) + 1) < parseInt($(event.currentTarget).attr("data-id"))) {
      
      alert("you need to unlock the other courses!")
    } else {
      if (passedQuiz) {
      
      
        Prototype.current_user.save({last_solved_quiz: $(event.currentTarget).attr("data-id").toString()})
      
        var nextLesson = Prototype.courses.first().lessons().findWhere({id: (parseInt($(event.currentTarget).attr("data-id")) + 1)})
      
        // if the lesson is the last one, user passes course
        if (nextLesson == undefined && parseInt(Prototype.current_user.get("current_lesson_id")) >= Prototype.courses.first().lessons().length) {
          Prototype.current_user.trigger("lessonUnlocked")
          alert("you passed the course!")
        }
        // if the lesson was not the last one
        else { 
          // if the user has passed all previous courses, add the next lesson and update the user's current_lesson_id
        
          // unlock the next lesson
          Prototype.current_user.save({current_lesson_id: nextLesson.id.toString()})
          Prototype.current_user.save({last_unlocked_lesson: nextLesson.id.toString()})
          this.lesson = Prototype.courses.first().lessons().findWhere({id: (parseInt($(event.currentTarget).attr("data-id")))});
        
          Prototype.current_user.trigger("lessonUnlocked");
        }
      } else {
          alert("wrong answers!")
      }
    }
    
    
  },
  
  checkScroll: function(event) {
    console.log(Prototype.current_user.get("current_lesson_id"))
    // console.log(this.lesson.id)
    if ($(event.currentTarget).scrollTop() >= ($(event.currentTarget)[0].scrollHeight - $(document).height())){
      if (Prototype.courses.first().lessons().findWhere({id: (this.lesson.id + 1)})) {
          this.addNextLesson();
      }
    }
  }, 
  
  addNextLesson: function() {   
    // console.log("in add next lesson")
//     console.log(Prototype.current_user.get("current_lesson_id"))
//     console.log(this.lesson.id) 
    var nextLesson = Prototype.courses.first().lessons().findWhere({id: (this.lesson.id + 1)}) 
    
    // if this lesson is not locked, increase the user's current lesson id
    if (this.lesson.quizzes().length == 0) {
      Prototype.current_user.save({current_lesson_id: nextLesson.id.toString()})
    }
   
     
    if (nextLesson.get("id") != undefined) {
      if (nextLesson.get("locked")) {
        this.lesson = nextLesson;
        var nextLessonView = this.template({
          lesson: this.lesson
        })
        
        $(".content-show").append(nextLessonView);
      } else {
        // Prototype.current_user.save({current_lesson_id: nextLesson.id.toString()})
        this.lesson = nextLesson;
        var nextLessonView = this.template({
          lesson: this.lesson
        })
    
        $(".content-show").append(nextLessonView);
      }
      
      
    }
  }
});
