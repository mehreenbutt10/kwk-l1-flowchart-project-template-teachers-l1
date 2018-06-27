class Question
  attr_accessor :id, :text, :answers

  def initialize(data{})
    @id = data[:id]
    @text = data[:text]
    @answers = data[:answers]
  end
  
end

question_1 = Question.new(:id => "Q1", :text =>"Are you tired?", :answers => {
  "Yes" => "R2",
  "No" => "Q2"
  })
