require "serverkit/actions/base"

module Serverkit
  module Actions
    class Validate < Base
      def call
        if recipe.valid?
          puts "Success"
        else
          abort_with_errors
        end
      end
    end
  end
end
