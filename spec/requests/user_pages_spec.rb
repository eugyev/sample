require 'spec_helper'

describe "User Pages" do
  before { visit signup_path }
  subject { page }
  it {should have_title(full_title 'Sign Up')}
  it {should have_content 'Sign Up'}
end
