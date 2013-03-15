require 'spec_helper'

describe "homes/edit" do
  before(:each) do
    @home = assign(:home, stub_model(Home,
      :name => "MyString",
      :about => "MyText",
      :price => 1.5
    ))
  end

  it "renders the edit home form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => homes_path(@home), :method => "post" do
      assert_select "input#home_name", :name => "home[name]"
      assert_select "textarea#home_about", :name => "home[about]"
      assert_select "input#home_price", :name => "home[price]"
    end
  end
end
