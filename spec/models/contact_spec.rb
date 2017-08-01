require 'rails_helper'

describe Contact do
  #名前、アドレス、内容があれば有効であること
  it "is valid with name email content" do
  contact = Contact.new(name: '佐藤', email: 'uenobu106@ezweb.ne.jp',content: '眠たいです')
  expect(contact).to be_valid
  end
  #名前がなければ無効であること
  it "is invalid without name" do
    contact = Contact.new(email: 'uenobu106@ezweb.ne.jp',content: '眠たいです')
    expect(contact).not_to be_valid
  end
  #アドレスがなければ無効であること
  it "is invalid without email" do
    contact = Contact.new(name: '佐藤',content: '眠たいです')
    expect(contact).not_to be_valid
  end
  #内容がなければ無効であること
  it "is invalid without content" do
    contact = Contact.new(name: '佐藤', email: 'uenobu106@ezweb.ne.jp')
    expect(contact).not_to be_valid
  end
end
