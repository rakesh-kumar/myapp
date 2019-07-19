class Api::V1::CampaignsController < ApplicationController
  
  def create
    run Campaign::Create do |result|
      return render json: {status: "success", campaign: result["model"]}
    end
    render json: {status: "error", message: @form.errors}
  end
 
  def show
    run Campaign::Show

    if result["model"]
      render json: {status: "success", campaign: result["model"]}
    else
      render json: {status: "error", message: "no campaign found with this id"}
    end
    
  end
  
  def index
    run Campaign::Index
    render json: {status: "success", campaigns: result["model"]}
  end
 

  def update
    run Campaign::Update do |result|
      return render json: {status: "success", campaign: result["model"]}
    end

    render json: {status: "error", message: @form.errors}
  end
  
  def destroy
    run Campaign::Delete do |result|
      return render json: {status: "success", message: "deleted successfully"}
    end

    render json: {status: "error", message: "no campaign found with this id"}
  end
  
end
