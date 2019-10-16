require_relative '../automated_init'

context "Try" do
  context "Specific Error" do
    context "Single Error" do
      context "Not raised" do
        success = Try.(ErrorA) { }

        test "Indicates success" do
          assert(success)
        end
      end

      context "Specific Error Raised" do
        success = Try.(ErrorA) { raise ErrorA }

        test "Indicates failure" do
          refute(success)
        end
      end

      context "Other Error Raised" do
        test "Error is re-raised" do
          assert_raises(RuntimeError) do
            Try.(ErrorA) { raise RuntimeError }
          end
        end
      end
    end
  end
end
