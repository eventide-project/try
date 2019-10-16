require_relative '../automated_init'

context "Try" do
  context "Specific Error" do
    context "Array of Errors" do
      context "Not raised" do
        success = Try.([ErrorA, ErrorB]) { }

        test "Indicates success" do
          assert(success)
        end
      end

      [ErrorA, ErrorB].each do |error_class|
        context "Specific Error Raised (#{error_class.name.split('::').last})" do
          success = Try.([ErrorA, ErrorB]) { raise error_class }

          test "Indicates failure" do
            refute(success)
          end
        end
      end

      context "Other Error Raised" do
        test "Error is re-raised" do
          assert_raises(RuntimeError) do
            Try.([ErrorA, ErrorB]) { raise RuntimeError }
          end
        end
      end
    end
  end
end
