require 'spec_helper'

describe "votes/edit" do
  before(:each) do
    @vote = assign(:vote, stub_model(Vote,
      :vote_belongs_to_all => "MyString",
      :vote_belongs_to_profesors => "MyString"
    ))
  end

  it "renders the edit vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => votes_path(@vote), :method => "post" do
      assert_select "input#vote_vote_belongs_to_all", :name => "vote[vote_belongs_to_all]"
      assert_select "input#vote_vote_belongs_to_profesors", :name => "vote[vote_belongs_to_profesors]"
    end
  end
end
