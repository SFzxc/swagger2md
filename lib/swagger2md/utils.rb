module Swagger2md
  module Utils
    def self.wrap_into_block content
      "\n```\n#{content}\n```\n"
    end
  end
end
