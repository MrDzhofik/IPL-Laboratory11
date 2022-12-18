require 'rails_helper'

RSpec.describe "answers/new", type: :view do
  before(:each) do
    assign(:answer, Answer.new(
      numbers: 1,
      right_numbers: "MyString"
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "input[name=?]", "answer[numbers]"

      assert_select "input[name=?]", "answer[right_numbers]"
    end
  end
end
