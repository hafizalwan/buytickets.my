class ActivitiesController < ApplicationController
  before_action :set_activity, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]

  def index
    @activities = current_user.activities
  end

  def new
    @activity = current_user.activities.build
  end

  def create
    @activity = current_user.activities.build(activity_params)
    if @activity.save
      redirect_to activities_listing_path(@activity), notice: "Saved.."
    else
      flash[:alert] = "Something is wrong.."
      render :new
    end
  end

  def update
    if @activity.update(activity_params)
      flash[:notice] = "Updated successfully.."
    else
      flash[:notice] = "Something is wrong.."
    end
    redirect_back(fallback_location: request.referrer)
  end

  def listing
  end

  def show
  end

  def details
  end

  def photos
  end

  def location
  end

  def price
  end

  private
  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :about, :details_1, :details_2, :how_to_directions, :how_to_seats, :activity_info, :refund_policies, :location_map, :location_title, :base_price, :adult_price, :child_price, :my_adult_price, :my_child_price, :int_adult_price, :int_child_price, :is_base_price, :is_adult, :is_child, :is_my_adult, :is_my_child, :is_int_adult, :is_int_child)
  end
end
