class AddLastSolvedQuizToUser < ActiveRecord::Migration
  def change
    add_column :users, :last_solved_quiz, :string
  end
end
