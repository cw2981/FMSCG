class MembersController < ApplicationController
  
  def new
    @member = Member.new
  end

  def create
    @member = current_user.members.create(member_params)
    redirect_to members_path
  end

  def show
     @members = Member.find(params[:id])
  end

private
  
  def member_params
    params.require(:member).permit(:name, :rank, :year)
  end
end
