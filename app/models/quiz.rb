class Quiz
attr_accessor :id, :title, :questions, :results
@@all = []
#saves the quiz.
  def initialize(id, title)
    @id = id
    @title = title
    @questions = []
    @results = []
    save
  end

def self.all
  @all
end

def self.find_by_id(id)
  @all.detect{
    |q| q.id.to_s == id.to_s
  }

  def next_step(step_id)
    if step_id.start_with?("Q")
      find_question(step_id)
    elsif step_id.start_with?("R")
      find_result(step_id)
    end
  end

  def find_question(step_id)
    @questions.detect{|q| q.id == step_id}
  end

  def find_result(step_id)
    @results.detect{|r| r.id == step_id}
  end

  def save
    @all << self
  end

  def add_question(question)
    self.questions << question
  end

  def add_result(result)
    self.results << result
  end
end

quiz = Quiz.new(1, "Should I go out tonight?")
question_1 = Question.new(:id => "Q1", :text => "Are you tired?", :answers => {
"Yes" => "R2",
"No" => "Q2"
})

quiz.add_question(question_1)
yes_result = Result.new(:id => "R1", :text => "Yes, go out.")

quiz.add_result(yes_result)
q1 = quiz.next_step("Q1")
r1 = quiz.next_step("R1")
