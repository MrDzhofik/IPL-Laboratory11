require_relative '../rails_helper'

RSpec.describe Answer, type: :model do
  describe 'If adding similar params' do
    before do
      Answer.create!(numbers: 3) if Answer.find_by(numbers: 3).nil?
    end
    it 'should be error because numbers is not unique' do
      expect {Answer.create(id: 1)}.to raise_error(ActiveRecord::RecordNotUnique)
    end
  end
end
