require 'rails_helper'

RSpec.feature "Users", type: :feature do
  

context 'logged in' do
        before(:each) do
          visit '/users/sign_in'
          fill_in 'user[email]', with: 'meeta1@gmail.com'
          fill_in 'user[password]', with: '123123'
          click_button 'Log in'
        end
       
       scenario 'do logged in stuff' do
            visit '/users/edit'
            expect(current_path).to eql('/users/edit')
            fill_in 'user[color]', with: '#000000'
            fill_in 'user[photo]', with: 'http://image.jpg'
            fill_in 'user[current_password]', with: '123123'
            click_button 'Update'
            visit '/users/edit'
            expect(find_field('user[color]').value).to eql('#000000')
            expect(find_field('user[photo]').value).to eql('http://image.jpg')
       end
    
   end
end