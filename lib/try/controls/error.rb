module Try
  module Controls
    class ErrorA < RuntimeError; end
    class ErrorB < ErrorA; end
  end
end
