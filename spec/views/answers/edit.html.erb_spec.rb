require 'rails_helper'

RSpec.describe "answers/edit", type: :view do
  let(:answer) {
    Answer.create!(
      numbers: 1,
      right_numbers: "MyString"
    )
  }

  before(:each) do
    assign(:answer, answer)
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(answer), "post" do

      assert_select "input[name=?]", "answer[numbers]"

      assert_select "input[name=?]", "answer[right_numbers]"
    end
  end
end
