require_relative '../automated_init'

context "Try" do
  context "Specific Error" do
    context "Multiple Errors" do
      context "Not raised" do
        success = Try.(ErrorA, ErrorB) { }

        test "Indicates success" do
          assert(success)
        end
      end

      context "Specific Error Raised" do
        success = Try.(ErrorA, ErrorB) { raise ErrorA }

        test "Indicates failure" do
          refute(success)
        end
      end

      context "Other Error Raised" do
        test "Error is re-raised" do
          assert proc { Try.(ErrorA, ErrorB) { raise RuntimeError } } do
            raises_error? RuntimeError
          end
        end
      end
    end
  end
end
