require 'rails_helper'

RSpec.describe "answers/show", type: :view do
  before(:each) do
    assign(:answer, Answer.create!(
      numbers: 2,
      right_numbers: "Right Numbers"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Right Numbers/)
  end
end
