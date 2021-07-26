class MembersController < ApplicationController
  before_action :set_member_params, only: [:show, :update, :edit, :destroy]

  def show
  end

  private

  def member_params
    params.require(:apo).permit(:name, :image, :status)
  end

  def set_member_params
    @member = Member.find(params[:id])
  end
end
