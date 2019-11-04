class MembersController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  
  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = current_user.members.create(member_params)
    if @member.valid?
    redirect_to members_path
     else
    render :new, status: :unprocessable_entity
  end
end

  def show
     @members = Member.find(params[:id])
  end

private
  
  def member_params
    params.require(:member).permit(:name, :rank, :year)
  end
end
