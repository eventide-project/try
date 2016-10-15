module Try
  def self.call(errors=nil, &action)
    success = false

    begin
      action.call
      success = true
    rescue
    end

    success
  end
end
