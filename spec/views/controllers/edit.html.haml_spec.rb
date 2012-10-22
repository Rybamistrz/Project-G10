require 'spec_helper'

describe "controllers/edit" do
  before(:each) do
    @controller = assign(:controller, stub_model(Controller,
      :Event => "MyString"
    ))
  end

  it "renders the edit controller form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => controllers_path(@controller), :method => "post" do
      assert_select "input#controller_Event", :name => "controller[Event]"
    end
  end
end
