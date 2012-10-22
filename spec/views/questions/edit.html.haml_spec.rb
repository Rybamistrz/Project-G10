require 'spec_helper'

describe "questions/edit" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :question => "MyText",
      :question_vote_fields => "MyString"
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => questions_path(@question), :method => "post" do
      assert_select "textarea#question_question", :name => "question[question]"
      assert_select "input#question_question_vote_fields", :name => "question[question_vote_fields]"
    end
  end
end
