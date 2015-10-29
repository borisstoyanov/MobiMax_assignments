require 'rubygems'
require 'watir-webdriver'
require 'cucumber'

class MyBrowser
  def initialize(browser)
    @browser = browser
  end
end

class Site < MyBrowser
  def registration_page
    @registration_page = Registration_page.new(@browser)
    @registration_page
  end

  def welcome_page
    @welcome_page = Welcome_page.new(@browser)
  end

  def settings_page
    @settings_page = Settings_page.new(@browser)
  end

  def login_page
    @settings_page = Login_page.new(@browser)
  end

  def close
    @browser.close
  end
end

class Registration_page < Site
  URL = 'http://www.mobymax.com/'

  def goTo
    @browser.goto URL
    self
  end

  def isAt
    @browser.title.include? 'Complete K-8 Curriculum | MobyMax'
  end

  def close
    @browser.close
  end

  def enter_lastname(arg)
    @browser.text_field(:name =>'data[LastName]').send_keys(arg)

  end

  def enter_firstname(arg)
    #15205
    @browser.text_field(:name =>'data[FirstName]').send_keys(arg)
  end

  def enter_zip(arg)
    @browser.text_field(:name =>'data[ZipCode]').send_keys(arg)

  end

  def enter_username(arg)
    @browser.text_field(:name =>'data[Email]').send_keys(arg)

  end

  def select_school(arg)
    option = @browser.div(:class, 'school-select-items').div(:title => arg)
    @browser.input(:name => 'data[School]').click
    option.wait_until_present
    option.click
  end

  def enter_password(arg)
    @browser.text_field(:name =>'data[Password]').send_keys(arg)
  end

  def clicks_on(arg)
    @browser.element(:xpath, "//*[text()='"+ arg + "']").click
    @welcome_page
  end
end

class Welcome_page < MyBrowser
  def isAt
    @browser.title.include? 'Complete K-8 Curriculum | MobyMax'
  end

  def goto_settings
    @browser.a(:text => 'My Settings').click
    Settings_page.new(@browser)
  end
end

class Settings_page < MyBrowser
  def check_account(arg)
    @browser.text_field(:value => arg).exist?
  end
end

class Login_page < MyBrowser
  URL = 'https://www.mobymax.com/MM/SI/'

  def goTo
    @browser.goto URL
    self
  end

  def login_as_teacher
    @browser.select_list(:id, 'signin_as_select').select('Teacher')
    @browser.input(:id, 'UserUsername').send_keys('math.teacher@thebestmathschooleverexisting.com')
    @browser.input(:id, 'UserPassword').send_keys('supersecret')
    @browser.input(:id, 'signin-btn').click
    Welcome_page.new(@browser)
  end


end