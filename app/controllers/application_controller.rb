class ApplicationController < ActionController::Base
    before_action :authenticate_user!, :except => [:welcome]

    def welcome

    end

    def members
        @users = User.all
    end

    def finished_campaigns
        @user = current_user
    end

    def after_sign_in_path_for(resource)
        @user = current_user

    end
end
