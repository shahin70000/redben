require 'spec_helper'

describe "homes/index" do
  before(:each) do
    assign(:homes, [
      stub_model(Home,
        :name => "Name",
        :about => "MyText",
        :price => 1.5
      ),
      stub_model(Home,
        :name => "Name",
        :about => "MyText",
        :price => 1.5
      )
    ])
  end

  it "renders a list of homes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
