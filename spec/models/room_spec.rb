require 'rails_helper'

RSpec.describe Room, type: :model do
before do
  @room = FactoryBot.build(:room)
end

describe 'チャットルーム作成' do
 context '新規作成できるとき' do
  it "nameの値が存在すれば保存できる" do
    expect(@room).to be_valid
end
end

context '新規作成できないとき'do
 it 'nameの値が存在しないと保存できない' do
  @room.name = ''
  @room.valid?
  expect(@room.errors.full_messages).to include("Name can't be blank")
end
end

end
end