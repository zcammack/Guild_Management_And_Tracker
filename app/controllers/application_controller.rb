class ApplicationController < ActionController::Base
    before_action :authenticate_user!, :except => [:welcome]

    def welcome

    end

    def current_user
        @user = current_user
    end

end
