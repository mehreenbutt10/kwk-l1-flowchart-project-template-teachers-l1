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
    |q| q.id.to_s
  }

end

quiz = Quiz.new(1, "Should I go out tonight?")
