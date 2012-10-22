require 'spec_helper'

describe "votes/new" do
  before(:each) do
    assign(:vote, stub_model(Vote,
      :vote_belongs_to_all => "MyString",
      :vote_belongs_to_profesors => "MyString"
    ).as_new_record)
  end

  it "renders new vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votes_path, :method => "post" do
      assert_select "input#vote_vote_belongs_to_all", :name => "vote[vote_belongs_to_all]"
      assert_select "input#vote_vote_belongs_to_profesors", :name => "vote[vote_belongs_to_profesors]"
    end
  end
end
