class CharactersController < ApplicationController
    before_action :set_campaign, only: [:index, :new, :create, :show]

    def index
        if @campaign.users.first == current_user
            set_campaign
            @characters = @campaign.characters.sort_by {|character| character.name}
        else
            flash[:alert] = "You do not have authorization to view this page."
            redirect_to campaign_path
        end
    end

    





    private

    def character_params
        params.require(:character).permit(:name, :age, :class, :race, :level, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :campaign_id, :user_id)
    end

    def set_campaign
        @campaign = Campaign.find_by(id:params[:campaign_id])
    end
end
