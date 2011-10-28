class PagesController < ApplicationController
    
    def home
        @title = "Home"
        @micropost = Micropost.new if signed_in?
        @feed_items = current_user.feed.paginate(:page => params[:page])
        if signed_in?
           @user = current_user
        end
    end
    
    def contact
        @title = "Contact"
    end
    
    def about
        @title = "About"
    end
    
    def help
        @title = "Help"
    end
end