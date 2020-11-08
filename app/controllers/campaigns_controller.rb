class CampaignsController < ApplicationController

    before action :set_campaign, only: [:show, :edit, :update, :destroy]



    private

    def campaign_params
        params.require(:campaign).permit(:title, :universe_setting, :dungeonmaster, :available)
    end

    def set_campaign
        @campaign = Campaign.find(params[:id])
    end
end
