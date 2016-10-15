require_relative 'automated_init'

context "Try" do
  context "Error not raised" do
    success = Try.() { }

    test "Indicates success" do
      assert(success)
    end
  end

  context "Error raised" do
    success = Try.() { fail }

    test "Indicates failure" do
      refute(success)
    end
  end
end
