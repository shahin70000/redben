require 'spec_helper'

describe "homes/show" do
  before(:each) do
    @home = assign(:home, stub_model(Home,
      :name => "Name",
      :about => "MyText",
      :price => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1.5/)
  end
end
