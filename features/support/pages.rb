# Initializes all page objects
class Pages

  attr_accessor :account_page, :confirmation_page

  def initialize
    @account_page = AccountPage.new
    @confirmation_page = ConfirmationPage.new
  end

end