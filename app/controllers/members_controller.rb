class MembersController < ApplicationController
  before_action :set_member_params, only: [:show, :update, :edit, :destroy]

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to controller: :members, action: :show, id: @member.id
    else
      render action: :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @member.update(member_params)
      redirect_to controller: :members, action: :show, id: @member.id
    else
      render action: :edit
    end
  end

  def destroy
  end

  private

  def member_params
    params.require(:member).permit(:id, :image, :name, :password, :password_confirmation, :department, :status)
  end

  def set_member_params
    @member = Member.find(params[:id])
  end
end
