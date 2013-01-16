require 'spec_helper'

describe "spams/index" do
  before(:each) do
    assign(:spams, [
      stub_model(Spam,
        :title => "Title",
        :content => "Content",
        :spammer => "Spammer",
        :user => nil
      ),
      stub_model(Spam,
        :title => "Title",
        :content => "Content",
        :spammer => "Spammer",
        :user => nil
      )
    ])
  end

  it "renders a list of spams" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Spammer".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
