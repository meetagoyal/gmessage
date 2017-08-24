# == Schema Information
#
# Table name: messages
#
#  id      :integer          not null, primary key
#  from_id :integer          not null
#  to_id   :integer          not null
#  subject :string           not null
#  body    :text
#

require 'rails_helper'

RSpec.describe Message, type: :model do
  
   describe '.new' do
            it 'instantiates a message object' do
              c = Message.new
              expect(c.is_a?(Message)).to be true
              expect(c.attributes.keys.count).to eql(5)
            end
        end
 describe '#save' do
                context 'happy path' do
                  it 'saves a message' do
                            user1 = User.where(email:  'meeta2@gmail.com').first.id
                            user2 = User.where(email:  'meeta3@gmail.com').first.id
                            c = Message.new(from_id: user1, to_id: user2 , subject: 'hello', body: 'lets plan to meet soon' )
                            c.save
                            expect(c.id).to_not be_nil
                    end
              end
        end
end 
