require 'spec_helper'

describe "spams/new" do
  before(:each) do
    assign(:spam, stub_model(Spam,
      :title => "MyString",
      :content => "MyString",
      :spammer => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new spam form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => spams_path, :method => "post" do
      assert_select "input#spam_title", :name => "spam[title]"
      assert_select "input#spam_content", :name => "spam[content]"
      assert_select "input#spam_spammer", :name => "spam[spammer]"
      assert_select "input#spam_user", :name => "spam[user]"
    end
  end
end
