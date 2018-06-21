class RequestsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    feature_request = FeatureRequest.find(params[:feature_request_id])
    user_request = feature_request.requests.find_or_initialize_by(user: current_user)
    user_request.upvote = params[:vote]
    respond_to do |format|
      if user_request.save
        format.html do
          flash[:notice] = 'Successfully voted'
          redirect_back(fallback_location: root_path)
        end

        format.json { render json: feature_request.reload }
      else
        format.html do
          flash[:alert] = 'Unable to record vote, please try again.'
          redirect_back(fallback_location: root_path)
        end

        format.json do
          render json: { errors: user_request.errors.full_messages },
                 status: :unprocessable_entity
        end
      end
    end
  end
end