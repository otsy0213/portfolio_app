class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def create
    @company = Company.new
    if @company.save
      redirect_to new_member_path
    else
      render action: :new
    end
  end


end
