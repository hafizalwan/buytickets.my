class ActivitiesController < ApplicationController
  before_action :set_room, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]
  def index
    @activities = current_user.activities
  end

  def new
    @room  = current_user.rooms.build
  end

  def create
    @activity = current_user.activities.build(activity_params)
    if @activity.save
      redirect_to listing_activity_path(@activity), notice: "Saved"
    else
      render :new, notice: "Something went wrong.."
    end
  end

  def update
    if @activity.update(activity_params)
      flash[:notice] = "Saved"
    else
      flash[:notice] = "Something went wrong.."
    end
    redirect_back(fallback_location: request.referrer)
  end

  def listing
  end

  def show
  end

  def description
  end

  def photos
  end

  def location
  end

  def price
  end

  private
    def set_activity
      @activities = Activity.find(params[:id])
    end

    def activity_params
      params:require(:activity).permit(:name, :about, :details_1, :details_2, :directions, :how_to, :activity_info, :refund_policies, :location_map, :location_title, :pricing)
    end
end
