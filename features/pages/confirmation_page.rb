class ConfirmationPage

    include Capybara::DSL

    def initialize
        @successe_msg = Element.new(:xpath, "//span[text() = ' Your Account Has Been Created!']")
    end

    def contains_section?(text)
        @successe_msg.element_on_page? 
    end
end