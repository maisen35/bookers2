class GroupsController < ApplicationController
  before_action :ensure_correct_group, only: [:edit, :update]

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.order_id = current_user.id
    if @group.save
      redirect_to groups_path
    else
      render 'new'
    end
  end

  def index
    @groups = Group.all
  end

  def show
  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to groups_path
    else
      render 'edit'
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :introduction, :image_id)
  end

  def ensure_correct_group
    @group = Group.find(params[:id])
    unless @group.order_id == current_user.id
      redirect_to groups_path
    end
  end
end
