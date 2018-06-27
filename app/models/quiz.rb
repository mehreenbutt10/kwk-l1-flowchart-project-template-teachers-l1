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
  
end

quiz = Quiz.new(1, "Should I go out tonight?")
