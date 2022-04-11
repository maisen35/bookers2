class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def create

  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def group_params
    params.require(:group).permit(:name, :introduction)
  end
end
