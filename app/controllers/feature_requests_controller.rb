class FeatureRequestsController < ApplicationController
  before_action :set_feature_request, only: [:show, :edit, :update, :destroy]

  def index
    @feature_requests = FeatureRequest.all.order(:created_at)
  end

  def show; end

  def new
    @feature_request = FeatureRequest.new
  end

  def edit; end

  def create
    @feature_request = FeatureRequest.new(feature_request_params)
    @feature_request.created_by_user_id = current_user.id
    respond_to do |format|
      if @feature_request.save
        format.html { redirect_to @feature_request, notice: 'Feature request was successfully created.' }
        format.json { render :show, status: :created, location: @feature_request }
      else
        format.html { render :new }
        format.json { render json: @feature_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @feature_request.update(feature_request_params)
        format.html { redirect_to @feature_request, notice: 'Feature request was successfully updated.' }
        format.json { render :show, status: :ok, location: @feature_request }
      else
        format.html { render :edit }
        format.json { render json: @feature_request.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @feature_request.destroy
    respond_to do |format|
      format.html { redirect_to feature_requests_url, notice: 'Feature request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_feature_request
    @feature_request = FeatureRequest.find(params[:id])
  end

  def feature_request_params
    params.require(:feature_request).permit(:name, :details, :difficulty)
  end
end
