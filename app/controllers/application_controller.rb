class ApplicationController < ActionController::Base
    before_action :authenticate_user!, :except => [:welcome]

    def welcome

    end
end
