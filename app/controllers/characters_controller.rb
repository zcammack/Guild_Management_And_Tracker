class CharactersController < ApplicationController
    before_action :set_campaign, only: [:index, :new, :create, :show]







    private

    def character_params
        params.require(:character).permit(:name, :age, :class, :race, :level, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :campaign_id, :user_id)
    end

    def set_campaign
        @campaign = Campaign.find_by(id:params[:campaign_id])
    end
end
