require 'spec_helper'

describe "spams/show" do
  before(:each) do
    @spam = assign(:spam, stub_model(Spam,
      :title => "Title",
      :content => "Content",
      :spammer => "Spammer",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Content/)
    rendered.should match(/Spammer/)
    rendered.should match(//)
  end
end
