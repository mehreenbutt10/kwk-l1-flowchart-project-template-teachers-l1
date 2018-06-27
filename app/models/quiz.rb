class Quiz
attr_accessor :id, :title, :questions, :results
@@all = {}
#saves the quiz.
  def initialize(id, title)
    @id = id
    @title = title
    @questions = []
    @results = []
  end
end

