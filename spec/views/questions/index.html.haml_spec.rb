require 'spec_helper'

describe "questions/index" do
  before(:each) do
    assign(:questions, [
      stub_model(Question,
        :question => "MyText",
        :question_vote_fields => "Question Vote Fields"
      ),
      stub_model(Question,
        :question => "MyText",
        :question_vote_fields => "Question Vote Fields"
      )
    ])
  end

  it "renders a list of questions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Question Vote Fields".to_s, :count => 2
  end
end
