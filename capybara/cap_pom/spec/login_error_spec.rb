require 'spec_helper'

describe'bbc sign in error' do

  before(:all) do
    @bbc_site = BBCSite.new
  end

  it 'should display an error when using incorrect login details' do
    @bbc_site.homepage.visit_home_page
  end

end
