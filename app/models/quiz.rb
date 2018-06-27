class Quiz

  @@questions = []
  #an array holding the instances of the quiz.
  @@results = []
  #an array holding onto the possible results of the quiz.
  def initialize(id, title)
    @id = id
    @title = title
    @questions = []
    @results = []
  end
end
