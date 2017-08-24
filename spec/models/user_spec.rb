# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  color                  :string
#  photo                  :string
#

require 'rails_helper'

RSpec.describe User, type: :model do
        describe '.new' do
            it 'instantiates a user object' do
              c = User.new
              expect(c.is_a?(User)).to be true
              expect(c.attributes.keys.count).to eql(15)
              expect(c.attributes.key?("color")).to eql(true)
              expect(c.attributes.key?("photo")).to eql(true)
            end
        end
        
        describe '#save' do
                context 'happy path' do
                  it 'saves a user' do
                            c = User.new(email: 'meeta5@gmail.com', password: '123123', photo: 'http://images.clipartpanda.com/user-clipart-dagobert83_female_user_icon.png' , color: '#FFC300' )
                            c.save
                            expect(c.id).to_not be_nil
                            expect(c.color).to eql('#FFC300')
                            expect(c.email).to eql('meeta5@gmail.com')
                            expect(c.created_at).to_not be_nil
                            expect(c.updated_at).to_not be_nil
                    end
              end
        end
end 