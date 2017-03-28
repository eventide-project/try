require_relative 'automated_init'

context "Try" do
  context "Error Probe" do
    context "Error Raised" do
      test "Is Captured" do
        error = nil
        probe = proc { |e| error = e }

        raised_error = ErrorA.new

        Try.(error_probe: probe) { raise raised_error }

        assert(error == raised_error)
      end
    end
  end
end
