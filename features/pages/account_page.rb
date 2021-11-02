class AccountPage

    include Capybara::DSL

    def initialize
        @account_form = Element.new(:css, 'form#AccountFrm')
        @first_name_input = Element.new(:css, '#AccountFrm_firstname')
        @last_name_input = Element.new(:css, '#AccountFrm_lastname')
        @login_name_input = Element.new(:css, '#AccountFrm_loginname')
        @password_input = Element.new(:css, '#AccountFrm_password')
        @confirm_input = Element.new(:css, '#AccountFrm_confirm')
        @subscribe_radio_1 = Element.new(:css, '#AccountFrm_newsletter1')
        @subscribe_radio_0 = Element.new(:css, '#AccountFrm_newsletter0')
        @privacy_policy_checkbox = Element.new(:css, '#AccountFrm_agree')
        @continue_btn = Element.new(:css, 'i.fa-check')
        @postcode_input = Element.new(:css, 'input[name=postcode]')


        @fill_email = Element.new(:css, '#AccountFrm_email')
        @fill_address_1 = Element.new(:css, '#AccountFrm_address_1')
        @fill_city = Element.new(:css, '#AccountFrm_city')
        @dropdown_select_country = Element.new(:css, '#AccountFrm_country_id')
        @country_options = Element.new(:css, '#AccountFrm_country_id option')
        @dropdown_select_region = Element.new(:css, '#AccountFrm_zone_id')
        @region_options = Element.new(:css, '#AccountFrm_zone_id option')

        
    end

    def visit
        Capybara.visit('/index.php?rt=account/create')
    end

    def enter_postcode(text)
        @postcode_input.set(text)
    end

    def click_continue
        @continue_btn.click
    end

    def select_privacy_checkbox
        @privacy_policy_checkbox.click
    end

    def select_subscribe_radio_no
        @subscribe_radio_0.click
    end

    def fill_password(text)
        @password_input.set(text)
    end
    def fill_confirm(text)
        @confirm_input.set(text)
    end


    def fill_login_name(text)
        @login_name_input.set(text)
    end

    def fill_first_name(text)
        
        @first_name_input.set(text)
    end

    def fill_last_name(text)
        
        @last_name_input.set(text)
    end
    
    def fill_email(text)
        
        @fill_email.set(text)
    end

    def fill_address_1(text)
        
        @fill_address_1.set(text)
    end

    def fill_city(text)
        #@first_name_input.send_keys(text)#pievieno laukam
        @fill_city.set(text)
    end

    def select_country(country_name)
        @dropdown_select_country.click
        Capybara.find(@country_options.path, text: /#{country_name}/i).click #!!! country_name is case insensetive regex
    end

    def select_region(region_name)
        @dropdown_select_region.click
        Capybara.find(@region_options.path, text: /#{region_name}/i).click 
    end




end