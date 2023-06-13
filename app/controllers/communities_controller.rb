class CommunitiesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @community = Community.new
  end

  def create
    @user = current_user
    @community = Community.new(
      title:params[:community][:title],
      profile:params[:community][:profile]
    )

    @user.communities << @community

    if @community.save!
      redirect_to root_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def community_params
    params.require(:community).permit(:title, :profile)
  end
end
