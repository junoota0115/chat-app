require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @message = FactoryBot.build(:message)
  end
  
  describe 'メッセージ投稿' do
    context 'メッセージ投稿ができる時' do
it 'contentとimageの値が存在すれば投稿できる' do
  expect(@message).to be_valid
end

    it 'contentの値が存在しなくても投稿できる' do
      @message.content = ''
      expect(@message).to be_valid
  end

  it 'imageの値が存在しなくても投稿できる' do
  @message.image = nil
    expect(@message).to be_valid
  end
end

context 'メッセージが投稿できないとき' do
it 'contentとimageが空の場合送信できない' do
  @message.content = ''
  @message.image = nil
  @message.valid?
  expect(@message.errors.full_messages).to include("Content can't be blank")
end

it 'roomが紐づいていないと保存できない' do
  @message.room = nil
  @message.valid?
  expect(@message.errors.full_messages).to include("Room must exist")
end

it 'userが紐づいていないと保存できない' do
@message.user = nil
@message.valid?
expect(@message.errors.full_messages).to include("User must exist")
end


end
end
end