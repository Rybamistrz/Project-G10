require 'spec_helper'

describe "questions/new" do
  before(:each) do
    assign(:question, stub_model(Question,
      :question => "MyText",
      :question_vote_fields => "MyString"
    ).as_new_record)
  end

  it "renders new question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => questions_path, :method => "post" do
      assert_select "textarea#question_question", :name => "question[question]"
      assert_select "input#question_question_vote_fields", :name => "question[question_vote_fields]"
    end
  end
end
