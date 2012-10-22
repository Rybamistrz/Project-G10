require 'spec_helper'

describe "votes/index" do
  before(:each) do
    assign(:votes, [
      stub_model(Vote,
        :vote_belongs_to_all => "Vote Belongs To All",
        :vote_belongs_to_profesors => "Vote Belongs To Profesors"
      ),
      stub_model(Vote,
        :vote_belongs_to_all => "Vote Belongs To All",
        :vote_belongs_to_profesors => "Vote Belongs To Profesors"
      )
    ])
  end

  it "renders a list of votes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Vote Belongs To All".to_s, :count => 2
    assert_select "tr>td", :text => "Vote Belongs To Profesors".to_s, :count => 2
  end
end
