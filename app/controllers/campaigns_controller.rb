class CampaignsController < ApplicationController

    before action :set_campaign, only: [:show, :edit, :update, :destroy]

    def index
        if user_signed_in?
            @campaigns = current_user.campaigns
        else
            flash[:alert = "Please sign up or login to see your campaigns."]
            redirect_to new_user_session_path
        end
    end

    def new
        @campaign = Campaign.new
        5.times{@campaign.characters.build(user:current_user)}
    end

    def create
        @campaign = current_user.traveler.campaign.build(campaign_params)
        if @campaign.save
            flash[:notice] = "Campaign successfully created."
            redirect to campaigns_path
        else
            @errors = @campaign.errors.full_messages
            flash[:alert] = "Campaign was not created. Please try again."
            render :'/campaigns/new'
        end
    end

    def update
        @campaign.update(campaign_params)
        redirect_to campaign_characters_path(@campaign)
    end

    def destroy
        @campaign.destroy
        flash[:notice] = "Successfully deleted Campaign."
        redirect_to campaigns_path
    end

    private

    def campaign_params
        params.require(:campaign).permit(:title, :universe_setting, :dungeonmaster, :available)
    end

    def set_campaign
        @campaign = Campaign.find(params[:id])
    end
end
