require 'spec_helper'

describe "votes/show" do
  before(:each) do
    @vote = assign(:vote, stub_model(Vote,
      :vote_belongs_to_all => "Vote Belongs To All",
      :vote_belongs_to_profesors => "Vote Belongs To Profesors"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vote Belongs To All/)
    rendered.should match(/Vote Belongs To Profesors/)
  end
end
