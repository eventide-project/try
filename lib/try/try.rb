module Try
  def self.call(*errors, &action)
    success = false

    begin
      action.call
      success = true
    rescue StandardError => e
      unless errors.empty?
        unless errors.include? e.class
          raise e
        end
      end
    end

    success
  end
end
