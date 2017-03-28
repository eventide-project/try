require_relative 'automated_init'

context "Try" do
  context "Error Probe" do
    context "Error Raised" do
      test "Is Captured" do
        error = nil
        probe = proc { |e| error = e }

        Try.(error_probe: probe) { raise ErrorA }

        assert(error.instance_of?(ErrorA))
      end
    end
  end
end
