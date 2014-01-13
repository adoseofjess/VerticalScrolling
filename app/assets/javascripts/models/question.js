Prototype.Models.Question = Backbone.Model.extend({
  urlRoot: "/questions",
  
  answers: function() {
    if (!this._answers) {
      this._answers = new Prototype.Collections.Answers([], 
{question: this});
      this._answers.reset(this.get("answers"))
    }
    return this._answers;
  },
});