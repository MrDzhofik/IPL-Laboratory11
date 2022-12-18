require 'rails_helper'

RSpec.describe "answers/index", type: :view do
  before(:each) do
    assign(:answers, [
      Answer.create!(
        numbers: 2,
        right_numbers: "Right Numbers"
      ),
      Answer.create!(
        numbers: 2,
        right_numbers: "Right Numbers"
      )
    ])
  end

  it "renders a list of answers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Right Numbers".to_s), count: 2
  end
end
