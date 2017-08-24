class MessagesController < ApplicationController
    
    def index
        @sentmessages = @user.sent_messages
        @receivedmessages = @user.received_messages
    end
    
    def new
        
    end
    
end