class Result
  attr_accessor :id, :text

  def initialize(data={})
    @id = data[:id]
    @text = data[:text]
  end

end

yes_result = Result.new(:id => "R1", :text => "Yes, go out.")
no_result = Result.new(:id => "R2", :text => "No, don't go out.")
