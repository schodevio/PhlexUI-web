# frozen_string_literal: true

class Form < ApplicationComponent
    def initialize(**attributes)
        @attributes = attributes
    end

    def template(&)
        form(
            **@attributes,
            &
        )
    end
end